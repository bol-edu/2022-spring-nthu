# Application Acceleration with High-Level Synthesis
## Lab A No.11_Streaming_free_running_k2k
### 110061585 Tim Hsu
# Description 

Kernel to kernel streaming example consisting of three compute units in a linear hardware pipeline.

    1) Memory read
       This Kernel reads the input vector from Global Memory and streams its output.
       
    2) Increment
       This Kernel reads stream input, increments the value and streams to output.
       
    3) Memory write
        This Kernel reads from its input stream and writes into Global Memory

# Result & Analysis

## Streaming_free_running_k2k
For free running kernel, user needs to specify ap_ctrl_none for return port.
This will create the kernel without AXI lite interface. Kernel will always be in running states.


![image](https://user-images.githubusercontent.com/102551069/160469346-e0d95cb4-8f01-4f16-8949-36913a3d9109.png)

Example of system diagram.


![image](https://user-images.githubusercontent.com/102551069/160469380-45bf9c8d-1c7c-401d-acf6-06131f303be4.png)

Example of resource utilization.


![image](https://user-images.githubusercontent.com/102551069/160469408-80c93d36-ab75-4990-80b3-b237f40029eb.png)

## Streaming_k2k_mm
On the code below it reset the data vectors and run the kernel after it allocate buffer in global memory. Moreover, Buffers are allocated CL_MEM_USE_HOST_PTR for efficient memory and Device-to-host communication. When the Kernel Arguments have been set, it also copy input data to device global memory for launching the Kernel after that it copy Result from Device Global Memory to Host Local Memory then open CL Host Code Ends to compare the device results with software results.


![image](https://user-images.githubusercontent.com/102551069/160469472-a0b1ad31-5aeb-4806-b361-c86da630f05d.png)


Example of system diagram


![image](https://user-images.githubusercontent.com/102551069/160470128-f633a11b-7119-4f6f-8b27-8c4178e6775c.png)

Example of resource utilization.


![image](https://user-images.githubusercontent.com/102551069/160470151-23a570d4-4875-4a76-a7fd-9d9d841b8a23.png)

