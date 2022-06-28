# Lab_B_Systolic_array
 Introduce how to implement systolic array with HLS.


# Introduction
###### The Systolic array is used in matrix multiplication. This architecture can reduce the number of times the hardware reads data.  
###### In this Lab, the matrix multiplication of A[16][16]*B[16][16] will be implemented, and Store the multiplied result in C[16][16].
###### Matrix multiplication corresponds to computation using the systolic array schema as follows:
![image](https://user-images.githubusercontent.com/52789589/160270185-2bdf399f-20d0-4455-ba11-529739a7cb5a.png)
![image](https://user-images.githubusercontent.com/52789589/160270255-c62eb0d6-076a-416d-b737-df914c9501b3.png)

# Code & Pragma
###### In for loop, we can use "pragma HLS LOOP_TRIPCOUNT" to help calculate the time required for the for loop to complete the operation.
```
readA:
    for (int loc = 0, i = 0, j = 0; loc < a_row * a_col; loc++, j++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size* c_size max = c_size * c_size
        if (j == a_col) {
            i++;
            j = 0;
        }
        localA[i][j] = a[loc];
    }

```
###### "HLS ARRAY_PARTITION variable = localA dim = 1 complete":The matrix localA will be cut into multiple arrays in the row direction
###### "HLS ARRAY_PARTITION variable = localB dim = 2 complete":The matrix localB will be cut into multiple arrays in the col direction
###### "HLS ARRAY_PARTITION variable = localC dim = 0 complete":Assume that each element of matrix C is 8bit, the matrix localC will be put in a register which is ```16*16*8``` bit

```
#pragma HLS ARRAY_PARTITION variable = localA dim = 1 complete

#pragma HLS ARRAY_PARTITION variable = localB dim = 2 complete

#pragma HLS ARRAY_PARTITION variable = localC dim = 0 complete
```

###### "HLS UNROLL" allows the operations in the for loop to be processed in parallel.
```
systolic1:
    for (int k = 0; k < a_col; k++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
    systolic2:
        for (int i = 0; i < MAX_SIZE; i++) {
#pragma HLS UNROLL
        systolic3:
            for (int j = 0; j < MAX_SIZE; j++) {
#pragma HLS UNROLL
                // Get previous sum
                int last = (k == 0) ? 0 : localC[i][j];

                // Update current sum
                // Handle boundary conditions
                int a_val = (i < a_row && k < a_col) ? localA[i][k] : 0;
                int b_val = (k < b_row && j < b_col) ? localB[k][j] : 0;
                int result = last + a_val * b_val;

                // Write back results
                localC[i][j] = result;
            }
        }
    }
```
# Build flow
###### You can refer to the file . The only difference is 3.2.2., just give "binary_container_1.xclbin" this argument.
[2021.2-Workbook-Lab3_new.pdf](https://github.com/kuanpei/Lab_B_Systolic_array/files/8357115/2021.2-Workbook-Lab3_new.pdf)

# Result
![image](https://user-images.githubusercontent.com/52789589/160271117-52c01709-ddc7-4cd1-a9a3-5180f6aba8c0.png)
