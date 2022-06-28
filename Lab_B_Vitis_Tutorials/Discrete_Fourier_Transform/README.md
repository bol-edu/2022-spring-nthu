# AAHLS_labB_DFT
In this project,  we can implement DFT by performing matrix multiplication. A real valued discrete function g[] (inputs) in the time domain with N points has a frequency domain representation with N/2 + 1
samples(outputs). Each of these frequency domain samples has one cosine and one sine amplitude value. Collectively these two amplitude values can be represented by a complex number with the
cosine amplitude representing the real part and the sine amplitude the imaginary part.

First, we run through the origin design to check if the function is correct and realize how this desgin works by C simulation. Then we run C synthesis to investigate with Schedule Viewer, where we can discover the violation after synthesis and further try to optimize the design. For cosimulation part, what we must pay attention to is the total cycle of the design, the performance reported by cosimulation is most likely to the real hardware.

We rearrange the for-loop, change the data type from floating point to integer, allocate new memory to store output data and use pragma instruction to optimize the origin design. Finally, after optimization, the reduction ratio is 83.33%. 
