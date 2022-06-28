/**********
Copyright (c) 2018, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/

/*******************************************************************************

Description: 

    SDx Beamformer example which showcases Pipeline and Reshaping directives
    to achieve better pipeline initiation interval(II) and better performance.

*******************************************************************************/
//OpenCL utility layer include
#include "xcl2.hpp"
#include <vector>

//Array Size to access
#define DATA_SIZE_SAMPLES 2500
#define DATA_SIZE_CHANNELS 16
#define DATA_SIZE_BEAMS 3

//Maximum Array Size
#define MAX_SIZE

// Software implementation of Matrix Multiplication
// The inputs are of the size (DATA_SIZE x DATA_SIZE)
void m_softwareGold(
    std::vector<int, aligned_allocator<int>> &RXi_in1, //Input Matrix 1
    std::vector<int, aligned_allocator<int>> &RXq_in1, //Input Matrix 1
    std::vector<int, aligned_allocator<int>> &Wi_in2, //Input Matrix 2
    std::vector<int, aligned_allocator<int>> &Wq_in2, //Input Matrix 2
    std::vector<int, aligned_allocator<int>> &Bi_out,  //Output Matrix
    std::vector<int, aligned_allocator<int>> &Bq_out  //Output Matrix
) {
    //Perform Complex Matrix multiply Out = RX_in1 x W_in2
    for (int i = 0; i < DATA_SIZE_SAMPLES; i++) {
        for (int j = 0; j < DATA_SIZE_BEAMS; j++) {
            for (int k = 0; k < DATA_SIZE_CHANNELS; k++) {
                Bi_out[i * DATA_SIZE_BEAMS + j] +=
                    RXi_in1[i * DATA_SIZE_CHANNELS + k] * Wi_in2[j * DATA_SIZE_CHANNELS + k] - 
                    RXq_in1[i * DATA_SIZE_CHANNELS + k] * Wq_in2[j * DATA_SIZE_CHANNELS + k];

                Bq_out[i * DATA_SIZE_BEAMS + j] +=
                    RXi_in1[i * DATA_SIZE_CHANNELS + k] * Wq_in2[j * DATA_SIZE_CHANNELS + k] + 
                    RXq_in1[i * DATA_SIZE_CHANNELS + k] * Wi_in2[j * DATA_SIZE_CHANNELS + k];
            }
        }
    }
}

int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];


    //if (DATA_SIZE_SAMPLES > MAX_SIZE) {
    //    std::cout << "Size is bigger than internal buffer size,"
    //              << " please use a size smaller than " << MAX_SIZE << "!"
    //              << std::endl;
    //    return EXIT_FAILURE;
    //}


    //Allocate Memory in Host Memory
    size_t RX_matrix_size_bytes = sizeof(int) * DATA_SIZE_CHANNELS * DATA_SIZE_SAMPLES;
    size_t W_matrix_size_bytes = sizeof(int) * DATA_SIZE_CHANNELS * DATA_SIZE_BEAMS;
    size_t B_matrix_size_bytes = sizeof(int) * DATA_SIZE_BEAMS * DATA_SIZE_SAMPLES;
    cl_int err;

    std::vector<int, aligned_allocator<int>> source_RXi_in1(RX_matrix_size_bytes);
    std::vector<int, aligned_allocator<int>> source_Wi_in2(W_matrix_size_bytes);
    std::vector<int, aligned_allocator<int>> source_hw_i_results(B_matrix_size_bytes);
    std::vector<int, aligned_allocator<int>> source_sw_i_results(B_matrix_size_bytes);

    std::vector<int, aligned_allocator<int>> source_RXq_in1(RX_matrix_size_bytes);
    std::vector<int, aligned_allocator<int>> source_Wq_in2(W_matrix_size_bytes);
    std::vector<int, aligned_allocator<int>> source_hw_q_results(B_matrix_size_bytes);
    std::vector<int, aligned_allocator<int>> source_sw_q_results(B_matrix_size_bytes);

    // Create the RX test data and Software Result
    for (int i = 0; i < DATA_SIZE_SAMPLES * DATA_SIZE_CHANNELS; i++) {
        source_RXi_in1[i] = i;
        source_RXq_in1[i] = i;
    }

    // Create the W test data and Software Result
    for (int i = 0; i < DATA_SIZE_CHANNELS * DATA_SIZE_BEAMS; i++) {
        source_Wi_in2[i] = i +1;
        source_Wq_in2[i] = -i -1;
    }

    // Create the BEAM Software Result
    for (int i = 0; i < DATA_SIZE_BEAMS * DATA_SIZE_SAMPLES; i++) {
        source_sw_i_results[i] = 0;
        source_hw_i_results[i] = 0;
        source_sw_q_results[i] = 0;
        source_hw_q_results[i] = 0;
    }

    //OPENCL HOST CODE AREA START
    auto devices = xcl::get_xil_devices();
    auto device = devices[0];

    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
    OCL_CHECK(
        err,
        cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
    OCL_CHECK(err,
              std::string device_name = device.getInfo<CL_DEVICE_NAME>(&err));

   auto fileBuf = xcl::read_binary_file(binaryFile);
   cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    devices.resize(1);
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
    OCL_CHECK(err, cl::Kernel krnl_beamformer(program, "beamformer", &err));

    //Allocate Buffer in Global Memory
    OCL_CHECK(err,
              cl::Buffer buffer_RXi_in1(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                    RX_matrix_size_bytes,
                                    source_RXi_in1.data(),
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_RXq_in1(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                    RX_matrix_size_bytes,
                                    source_RXq_in1.data(),
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_Wi_in2(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                    W_matrix_size_bytes,
                                    source_Wi_in2.data(),
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_Wq_in2(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                    W_matrix_size_bytes,
                                    source_Wq_in2.data(),
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_Bi_output(context,
                                       CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       B_matrix_size_bytes,
                                       source_hw_i_results.data(),
                                       &err));

    OCL_CHECK(err,
              cl::Buffer buffer_Bq_output(context,
                                       CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       B_matrix_size_bytes,
                                       source_hw_q_results.data(),
                                       &err));

    int size_SAMPLES  = DATA_SIZE_SAMPLES;
    int size_CHANNELS = DATA_SIZE_CHANNELS;
    int size_BEAMS    = DATA_SIZE_BEAMS;

    OCL_CHECK(err, err = krnl_beamformer.setArg(0, buffer_RXi_in1));
    OCL_CHECK(err, err = krnl_beamformer.setArg(1, buffer_RXq_in1));
    OCL_CHECK(err, err = krnl_beamformer.setArg(2, buffer_Wi_in2));
    OCL_CHECK(err, err = krnl_beamformer.setArg(3, buffer_Wq_in2));
    OCL_CHECK(err, err = krnl_beamformer.setArg(4, buffer_Bi_output));
    OCL_CHECK(err, err = krnl_beamformer.setArg(5, buffer_Bq_output));
//    OCL_CHECK(err, err = krnl_beamformer.setArg(6, size_SAMPLES));
//    OCL_CHECK(err, err = krnl_beamformer.setArg(7, size_CHANNELS));
//    OCL_CHECK(err, err = krnl_beamformer.setArg(8, size_BEAMS));

    //Copy input data to device global memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_RXi_in1, buffer_Wi_in2, buffer_RXq_in1, buffer_Wq_in2},
                                               0 /* 0 means from host*/));

    //Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_beamformer));
    q.finish();

    //Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_Bi_output, buffer_Bq_output},
                                               CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    //OPENCL HOST CODE AREA END

    // Compute Software Results
    m_softwareGold(source_RXi_in1, source_RXq_in1, source_Wi_in2, source_Wq_in2, source_sw_i_results, source_sw_q_results);

    // Compare 'I' results of the Device to the simulation
    int match_i = 0;
    for (int i = 0; i < DATA_SIZE_BEAMS * DATA_SIZE_CHANNELS; i++) {
        if (source_hw_i_results[i] != source_sw_i_results[i]) {
            std::cout << "Error: Result_i mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_i_results[i]
                      << " Device result = " << source_hw_i_results[i]
                      << std::endl;
            match_i = 1;
            break;
        }
    }

    // Compare 'Q' results of the Device to the simulation
    int match_q = 0;
    for (int i = 0; i < DATA_SIZE_BEAMS * DATA_SIZE_CHANNELS; i++) {
        if (source_hw_i_results[i] != source_sw_i_results[i]) {
            std::cout << "Error: Result_q mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_q_results[i]
                      << " Device result = " << source_hw_q_results[i]
                      << std::endl;
            match_q = 1;
            break;
        }
    }


    std::cout << "TEST_i " << (match_i ? "FAILED" : "PASSED") << std::endl;
    std::cout << "TEST_q " << (match_q ? "FAILED" : "PASSED") << std::endl;
    return (match_i && match_q ? EXIT_FAILURE : EXIT_SUCCESS);
}
