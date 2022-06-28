# Application Acceleration with High-Level Synthesis (11020EE521800) Lab_B 02_Bloom
#### Vitis™ Application Acceleration Development Flow Tutorials - Optimizing Accelerated FPGA Applications: Bloom Filter Example
###### 
##### 110061639 Chih-Yu Lin
###### tags: `HLS` `Vitis` `FPGA`


# Function description
A Bloom filter is a space-efficient probabilistic data structure that is used to test whether an element is a member of a set.

In general, a Bloom filter application has use cases in data analytics, such as browsing through unstructured email and text file data to identify the documents that are closely associated with a specific user and send notifications accordingly.

![](https://i.imgur.com/Hluo1JB.png)

In this tutorial, each document consists of an array of words where: each word is a 32-bit unsigned integer comprised of a 24-bit word ID and an 8-bit integer representing the frequency. The search array consists of words of interest to the user, and represents a smaller set of 24-bit word IDs, where each word ID has a weight associated with it, determining the importance of the word.

1. Go to the cpu_src directory, open the main.cpp file, and look at line 63.

2. The Bloom filter application is 64 KB, which is implemented as 1L<<bloom_size where bloom_size is defined as 14 in the header file sizes.h (calculated as (2^14)*4B = 64 KB).

3. The score for each document is obtained by the cumulative product of multiplying the weight of word ID with its frequency. The greater the score, the more relevant the document that matches the search array.


# Build flow
### Run on CPU
```shell script
# Build SW version application
$ cd src/cpu_src/
$ make run
```
### Run on Actual HW (Xilinx U50)
```shell script
# Build FPGA accelerated application (target Xilinx U50)
$ cd src/makefile/
# You can set PF = 1, 2, 4, 8, 16 to have different number of words to be processed in parallel.
$ make build STEP=single_buffer PF=1
# Go to host application directory
$ cd build/single_buffer/kernel_1/hw
# Run application with number of documents
$ ./host 10000
```

# Result & Analysis
Here, I run the application on CPU and actual hardware with different number of kernel (PF=2, 4, 8, 16).
Example of application running on CPU:
![](https://i.imgur.com/r81qcS8.png)

$Throughput = Total data/Total time
= 139.506 MB / 171.8735ms = 811.68 MBps$

Example of application running on FPGA:
![](https://i.imgur.com/r3NIKak.png)

$Throughput = Total data/Total time
= 139.506 MB / 145.8065ms = 956.79 MBps$

We can now use the actual hardware accelerated throughput then normalize to CPU throughput generate the speed up comparison in below graph.

![](https://i.imgur.com/fqJ8jq2.png)

Furthermore, we can use Vitis Analyzer to see additional information such as application timeline, resource utilization, etc.

Example of application timeline (kernel/PF=2)

![](https://i.imgur.com/JKEO1b6.png)

Example of resource utilization (kernel/PF=8)

![](https://i.imgur.com/12Garx1.png)
