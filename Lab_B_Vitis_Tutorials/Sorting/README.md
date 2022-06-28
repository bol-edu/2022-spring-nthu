<h1 align="left"> HLS_lab_B_sorting 
<h3 align="left"> NTHU EE 110061560 Bob-Wu
 
 ## Insertion sort
 - Insertion sort is a simple sorting algorithm that builds the final sorted array one item at a time. 

 - It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. 

 - advantages:
   - Simple implementation
   - Efficient for (quite) small data sets
   - only requires a constant amount O(1) of additional memory space   

 ## Merge sort
 - Merge sort is an efficient, general-purpose, and comparison-based sorting algorithm.

 - advantages:
   - The same amount of data with the same number of running cycles
   - Efficient for (quite) large data sets

 ## build flow
 1. Study algorithms
 2. Write C++ code and verify on HLS
 3. Use vivado for block design
 4. Run on pynq

 ## result
 ### Insertion sort vs Merge sort
 1. test data : There are two different situations.
 ![image](https://user-images.githubusercontent.com/102166023/160161454-539312ae-0557-4549-97b6-9d98134ea013.png)
 2. run cycle time with test data 1 
    -  input = { 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 }
    - output = { 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 }
 ![image](https://user-images.githubusercontent.com/102166023/160162025-39e7fe15-cd8e-47d9-bca6-39f589030d4c.png)
 3. run cycle time with test data 2 
    -  input = { 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 }
    - output = { 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 }
 ![image](https://user-images.githubusercontent.com/102166023/160162192-e9c91cd4-64a8-4ae6-9bf5-bd2f45e42892.png)
 4. performance
 ![image](https://user-images.githubusercontent.com/102166023/160162259-34bf5e40-af37-48f9-9001-7f346f171701.png)

 ### Insertion sort vs Insertion sort improved
 1. test data : 
    -  input = { 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 }
    - output = { 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 }
 2. run cycle time
 ![image](https://user-images.githubusercontent.com/102166023/160163052-cb4c16ca-76b3-46aa-b3e8-c93cade128b1.png)
 3. performance
 ![image](https://user-images.githubusercontent.com/102166023/160162714-8b30fca8-9f18-4a45-8691-7367a0fcfcde.png)
 4. utilization
 ![image](https://user-images.githubusercontent.com/102166023/160162768-f605f796-42cf-4803-95eb-7820df4688c3.png)

 

 
