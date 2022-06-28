# HLS_LabB_no9

## Overall system
Sparse matrix refers to a specific matrix type containing most of zero data. A lot of multiplication will be wasted when we multiply this type of matrix with the usual matrix multiplication method and standard data structure since most of the answers are zero. Hence, we should use an advanced data structure named “compressed row storage”(CRS). Figure 1.1 shows an example of 4*4 matrix M. Figure 1.1(a) is the normal representation of this matrix as a two-dimensional array of 16 elements. Figure 1.2(b) shows the CRS representation. CRS representation has three arrays. The values array holds the values of non-zero elements in the matrix. The columnindex and rowPtr array encode information regards to the location of those non-zero data. Columnindex stores the column of each non-zero data, and rowPtr stores cumulative the number of non-zero data in each row. Applying the CRS format will certainly introduce some increase in book-keeping information when the number of zero data is not enough in the matrix. But this negative effect will be compromised when the sparsity increase.

To be more precise, we can look at Figure 1.1. Figure 1.1(a) shows how the sparse matrix is stored in normal format. Only (0,2), (0,3), (1,0), (1,2), (3,1) have data, but it consumes a 4*4 storage, which is a lot of waste. On the other hand, we can separate the matrix into three arrays, values, columindex, and rowPtr. Values array holds the value of M. Columindex array holds the column index of those non-zero data. RowPtr array holds the cumulative number of data with the first elements always being zero, and the last element will always be the total number of data in M. Since row1 has two non-zero data, rowPtr[1] is 2. And row 2 also have two non-zero data, so the rowPtr[2] = rowPtr[1] + 2.  
 
![image](https://user-images.githubusercontent.com/76727373/160271825-f65e7b6f-6b09-4e27-80bf-eb527532a1f2.png)

Figure 1.1 CRS demostration

When we want to calculate the CRS format data, we start from row0 and use columindex to achieve data and check whether there is still have non-zero data by rowPtr. Until there is no non-zero data anymore.

## Implementation
Based on our introduction of the CRS format, we can design a multiplication method as Figure 2.1. This algorithm contains two for loop. The first for loop will traverse all number of rows, and the second will multiply values from the y matrix and the corresponding columindex in the x matrix until we reach all non-zero data in this row.

![image](https://user-images.githubusercontent.com/76727373/160271832-cf8d658d-f6bc-42c8-8b13-2ecfd4647ebe.png)

Figure 2.1 spmv.cpp

And we need to design a testbench to verify our idea. Figure 2.2 shows the testbench design. We will compare our result from our algorithm and the restult from typical matrix multiplication. If the result is the same, we will get a PASS!.

![image](https://user-images.githubusercontent.com/76727373/160271838-e6a582d0-b507-42f1-96bc-737116b4dc0b.png)

Figure 2.2 spmv testbench

## Analyze
If we didn’t apply any deriptive and run the synthesis, we will get the baseline model. We will notice that Vitis will automatilly pipline the L2 with the iteration latency is 13, interval is 5, trip count is 4, FF usage is 1165, and LUT is 1388. And we can see the program use one mul and one add for the baseline.

![image](https://user-images.githubusercontent.com/76727373/160271848-e4b68349-035d-4a12-a763-169cfd22b946.png)
![image](https://user-images.githubusercontent.com/76727373/160271850-7c27b911-e646-4bf1-8d45-bc0d6eb3a30a.png)
![image](https://user-images.githubusercontent.com/76727373/160271851-c098aaf5-b53a-40a9-8abe-433af86ef930.png)


