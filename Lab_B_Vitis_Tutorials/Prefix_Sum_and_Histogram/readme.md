**Prefix Sum and Histogram**

**pp4fpgas [chap8]**



- Algorithm: 
  - Prefix Sum

    - The prefix sum is the cumulative sum of a sequence of numbers.
    - Given a sequence of inputs $𝑖𝑛_{𝑛}$, the prefix sum $out_{𝑛}$ is the summation of the first n inputs.

  - Histogram

    -  A Histogram models the probability distribution of a discrete signal.
    - Given a sequence of discrete input values, the histogram counts the number of times each value appears in the sequence.

    

- Build Flow: [under Zynq-Z2 environment]

  - 1.At the first, we should know how the algorithm calculate and what are the expected results.
  - 2.Create Vitis project and import sources files into project.
  - 3.Run C-sim => Synthesis.
  - 4.Check Co-Sim and get to know how it works.
  - 5.export to RTL , package it to IP.
  - 6.Create new project in Vivado and import previous stage design IP.
  - 7.Create Block design and add necessary IPs.
  - 8.Generate the wrapper , then generate the bitstream.
  - 9.Copy the specificed design implementation, *.hwh, *.bit and write the host program (python file) to control the verify process.
  - 10.Get the results from Jupyter.

  

------



- Reference:
  - "Parallel Programming for FPGAs", Ryan Kastner, Janarbek Matai, and Stephen Neuendorffer

  

------

Prefix Sum Result


![fig1](https://github.com/caota985107/prefix-sum-and-histogram/blob/main/fig/fig1.png)

Histogram Result

![fig2](https://github.com/caota985107/prefix-sum-and-histogram/blob/main/fig/fig2.png)



------

Prefix Sum Analysis

![fig3](https://github.com/caota985107/prefix-sum-and-histogram/blob/main/fig/fig3.png)



Histogram  Analysis

![fig4](https://github.com/caota985107/prefix-sum-and-histogram/blob/main/fig/fig4.png)



