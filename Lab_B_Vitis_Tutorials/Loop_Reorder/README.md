# HLS_Lab_B_Loop_Reorder
Briefly introduce Lab B loop reorder.
# Algorithm
Computers usually have multiple cache layers between the processor and main memory, often called memory hierarchy. If you access the values ​​in the cache smoothly, you will end up with better performance than random access data.
In C/C++, arrays are usually stored in the row direction, which means that memory stores all values ​​adjacent to each other for each row in the matrix.
In each iteration, the value of k changes and increases. When running the innermost loop, each loop iteration will likely have a cache miss when loading B[k][j]. Every time the k increases, it will skip the entire column of the matrix and jump to a farther memory, which may exceed the value of the cache. 
![image](https://user-images.githubusercontent.com/96122960/160431175-2c2d0fdf-00a0-4dbd-89dc-075b34a2d5f8.png)
![image](https://user-images.githubusercontent.com/96122960/160431209-d474b1f8-205b-4e7a-a8eb-ee6ab84173cf.png)
Consider change the j order and k order. In each iteration, since the values ​​are in row order, the value of C[i][j] is likely to be in cache. Similarly, B[k][j] may already be cached, and since i and k have not changed, A[i][k] may also be in the cache, which means that there are cache misses in each iteration in the inner loop.
![image](https://user-images.githubusercontent.com/96122960/160431096-0d83b30a-a769-4161-9a33-62041271489e.png)
![image](https://user-images.githubusercontent.com/96122960/160431141-5d7e643a-2ad4-4500-bee4-6db455edfcfa.png)
# Code
Used pragma 
1. #pragma HLS UNROLL
2. #pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
3. #pragma HLS ARRAY_PARTITION variable = B dim = 2 complete
4. #pragma HLS ARRAY_PARTITION variable = C dim = 2 complete
5. #pragma HLS ARRAY_PARTITION variable = temp_sum dim = 1 complete <br>

Read A, B
```readA:
    for (int itr = 0, i = 0, j = 0; itr < size * size; itr++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size* c_size max = c_size * c_size
        if (j == size) {
            j = 0;
            i++;
        }
        A[i][j] = in1[itr];
    }
    readB:
    for (int itr = 0, i = 0, j = 0; itr < size * size; itr++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size* c_size max = c_size * c_size
        if (j == size) {
            j = 0;
            i++;
        }
        B[i][j] = in2[itr];
    }
   ```
Loop Reorder
```lreorder1:
    for (int i = 0; i < size; i++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
    lreorder2:
        for (int k = 0; k < size; k++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
        lreorder3:
            for (int j = 0; j < MAX_SIZE; j++) {
                int result = (k == 0) ? 0 : temp_sum[j];
                result += A[i][k] * B[k][j];
                temp_sum[j] = result;
                if (k == size - 1) C[i][j] = result;
            }
        }
    }
```
Write C
```writeC:
    for (int itr = 0, i = 0, j = 0; itr < size * size; itr++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size* c_size max = c_size * c_size
        if (j == size) {
            j = 0;
            i++;
        }
        out_r[itr] = C[i][j];
    }
```
# Build Flow
Refer to the file below, and change the argument in 3.2.2 to 'binary_container_1.xclbin' <br>
[2021.2-Workbook-Lab3.pdf](https://github.com/rhsuanwang/HLS_Lab_B_Loop_Reorder/files/8364267/2021.2-Workbook-Lab3.pdf)

# Result
![image](https://user-images.githubusercontent.com/96122960/160433760-cc8630f7-e926-408a-b08b-5d631c69fbd6.png)
![image](https://user-images.githubusercontent.com/96122960/160433787-0c118c99-5972-4ef9-806f-d8a09fda3bf6.png)
![image](https://user-images.githubusercontent.com/96122960/160433897-d0f4226b-3ff4-49ab-80ca-af8318ed8800.png)
