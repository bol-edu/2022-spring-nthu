In Makefile, we need to change the code below.
1. Add them into Makefile 
    ```
    OPENCV_LIB ?= /usr/opencv/lib64/
    OPENCV_INCLUDE ?= /usr/opencv/include/opencv4/
    ```
2. Change Platform to xilinx_u50_gen3x16_xdma_201920_3
3. Change the input figure
4. When doing HW, you have to type the command below in terminal
    ```
    bash
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:< path-to-opencv-lib-folder >
    make run TARGET=hw
    ```
