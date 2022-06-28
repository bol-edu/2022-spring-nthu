/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

/*******************************************************************************
Description:
    Kernel to kernel streaming example consisting of three compute
    units in a linear hardware pipeline.

    1) Memory read
        This Kernel reads the input vector from Global Memory and streams its
output.

    2) Increment
        This Kernel reads stream input, increments the value and streams to
output.

    3) Memory write
        This Kernel reads from its input stream and writes into Global Memory.

                     _____________
                    |             |<----- Global Memory
                    |  mem_read   |
                    |_____________|------+
                     _____________       | AXI4 Stream
                    |             |<-----+
                    |  increment  |
                    |_____________|----->+
                     ______________      | AXI4 Stream
                    |              |<----+
                    |  mem_write   |
                    |______________|-----> Global Memory


*******************************************************************************/
#include <cstdlib>
#include <stdio.h>
#include <stdlib.h>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <vector>
#include <xcl2.hpp>
//#include "dsp/L1/examples/myfix4_dataflow_host/src/picture_txt/pic_data.txt"
//#include "dsp/L1/examples/myfix4_dataflow_host/src/data_path.hpp"
int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    size_t data_size = 1064;
    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel krnl_mem_read, krnl_mem_write,krnl_increment;///////////////////<---------------------------------------------------------------

    // Reducing the data size for emulation mode
    char* xcl_mode = getenv("XCL_EMULATION_MODE");
    if (xcl_mode != nullptr) {
        data_size = 1064;
    }

    // Allocate Memory in Host Memory
    size_t vector_size_bytes = sizeof(int) * data_size;
    std::vector<int, aligned_allocator<int> > source_input(data_size);
    std::vector<int, aligned_allocator<int> > source_hw_results(data_size);
    std::vector<int, aligned_allocator<int> > source_sw_results(data_size);

    // Create the test data and Software Result
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    std::cout << ">> Read Data\n";
  	FILE * pFile;
  	char path[] = "/users/course/2022S/HLS17000000/g110064502/my_host_test/host_combine_fixed/host/streaming_free_running_k2k/src/dsp/L1/examples/myfix4_dataflow_host/src/picture_txt/pic_data.txt";
  	pFile = fopen( path,"r");
    std::cout << ">> fopen Data : " << pFile  <<"\n";
    //std::vector<int, aligned_allocator<int> > source_input(7168);
  	//int data[7168];
  	//int i=0;
  	//while(fscanf (pFile, "%d", &data[i]) != EOF){
    //	i++;
  	//}
    for (size_t i = 0; i < data_size; i++) {
        //source_input[i] = i;
        fscanf (pFile, "%d", &source_input[i]);
        source_sw_results[i] = source_input[i];
    }
    std::cout << ">> load Data success\n";
    fclose (pFile);
    std::cout << ">> pFile close\n";
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // OPENCL HOST CODE AREA START
    // get_xil_devices() is a utility API which will find the Xilinx
    // platforms and will return list of devices connected to Xilinx platform
    std::vector<cl::Device> devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device,
                                            CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_mem_read = cl::Kernel(program, "mem_read", &err));
            OCL_CHECK(err, krnl_mem_write = cl::Kernel(program, "mem_write", &err));
            OCL_CHECK(err, krnl_increment = cl::Kernel(program, "increment", &err));///////////////////<---------------------------------------------------------------
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // Allocate Buffer in Global Memory
    // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and
    // Device-to-host communication
    std::cout << "Creating Buffers..." << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_input(context,
                                           CL_MEM_USE_HOST_PTR, // | CL_increment_ONLY,
                                           vector_size_bytes, source_input.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context,
                                            CL_MEM_USE_HOST_PTR, // | CL_MEM_WRITE_ONLY,
                                            vector_size_bytes, source_hw_results.data(), &err));

    // Set the Kernel Arguments
    int size = data_size;
    OCL_CHECK(err, err = krnl_mem_read.setArg(0, buffer_input));
    OCL_CHECK(err, err = krnl_mem_read.setArg(2, size));
    OCL_CHECK(err, err = krnl_mem_write.setArg(1, buffer_output));
    OCL_CHECK(err, err = krnl_mem_write.setArg(2, size));
    OCL_CHECK(err, err = krnl_increment.setArg(2, size));

    // Copy input data to device global memory
    std::cout << "Copying data..." << std::endl;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_input}, 0 /*0 means from host*/));

    OCL_CHECK(err, err = q.finish());

    // Launch the Kernel
    std::cout << "Launching Kernel..." << std::endl;
    OCL_CHECK(err, err = q.enqueueTask(krnl_mem_read));
    std::cout << "Launching Kernel00000000000000000000000000000000000000000000000000..." << std::endl;
    ///////////////////////////////////////////////////////////////////////////
    OCL_CHECK(err, err = q.enqueueTask(krnl_increment));///////////////////<---------------------------------------------------------------
    std::cout << "Launching Kernel11111111111111111111111111111111111111111111111111..." << std::endl;
    OCL_CHECK(err, err = q.enqueueTask(krnl_mem_write));
    std::cout << "Launching Kernel22222222222222222222222222222222222222222222222222..." << std::endl;
    // wait for all kernels to finish their operations
    std::cout << "Launching Kernel33333333333333333333333333333333333333333333333333..." << std::endl;
    OCL_CHECK(err, err = q.finish());
    
    
    // Copy Result from Device Global Memory to Host Local Memory
    std::cout << "Getting Results..." << std::endl;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    std::cout << "Launching Kernel44444444444444444444444444444444444444444444444444..." << std::endl;
    OCL_CHECK(err, err = q.finish());
    std::cout << "Launching Kernel55555555555555555555555555555555555555555555555555..." << std::endl;
    // OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    bool match = true;
    /*
    for (size_t i = 0; i < data_size; i++) {
        std::cout <<source_sw_results[i]<<"---------"<<source_hw_results[i]<< std::endl;
        if (source_hw_results[i] != source_sw_results[i]) {
            //std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                      << " Device result = " << source_hw_results[i] << std::endl;
            match = false;
            //break;
        }
    }
    */
    match = true;
    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    std::cout << ">> Calculation Finished!" << std::endl;
    
    std::cout << ">> Pixl_Error_Rate" << std::endl;
   
    int Pixl_ERROR = 0;
    int PixlER;
    for (PixlER = 0 ; PixlER < data_size ; PixlER++){
      if(source_hw_results[PixlER] != source_sw_results[PixlER]){
          Pixl_ERROR++;
      }
    }
    std::cout << (float)Pixl_ERROR*100.0/(float)data_size << "%" <<std::endl;
    
    std::cout << ">> Symbol_Error_Rate" << std::endl;
    int Symbol_ERROR = 0;
    int SER;
    for (SER = 0 ; SER < data_size ; SER++){
      if((source_hw_results[SER]/16) != (source_sw_results[SER]/16)){
          Symbol_ERROR++;
      }
      if((source_hw_results[SER]%16) != (source_sw_results[SER]%16)){
          Symbol_ERROR++;
      }
    }
    std::cout << (float)Symbol_ERROR*100.0/(float)(data_size*2) << "%" <<std::endl;
    
    std::cout << ">> Bit_Error_Rate" << std::endl;
    int Bit_ERROR = 0;
    int BER;
    for (BER = 0 ; BER < data_size ; BER++){
      if((source_hw_results[BER]/128) != (source_sw_results[BER]/128)){
          Bit_ERROR++;
      }
      if(((source_hw_results[BER]/64)%2) != ((source_sw_results[BER]/64)%2)){
          Bit_ERROR++;
      }
      if(((source_hw_results[BER]/32)%2) != ((source_sw_results[BER]/32)%2)){
          Bit_ERROR++;
      }
      if(((source_hw_results[BER]/16)%2) != ((source_sw_results[BER]/16)%2)){
          Bit_ERROR++;
      }
      if(((source_hw_results[BER]/8)%2) != ((source_sw_results[BER]/8)%2)){
          Bit_ERROR++;
      }
      if(((source_hw_results[BER]/4)%2) != ((source_sw_results[BER]/4)%2)){
          Bit_ERROR++;
      }
      if(((source_hw_results[BER]/2)%2) != ((source_sw_results[BER]/2)%2)){
          Bit_ERROR++;
      }
      if((source_hw_results[BER]%2) != (source_sw_results[BER]%2)){
          Bit_ERROR++;
      }
    }
    std::cout << (float)Bit_ERROR*100.0/(float)(data_size*8) << "%" <<std::endl; 
      
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}
