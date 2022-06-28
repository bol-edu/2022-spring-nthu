# OFDM_Implemented_by_HLS

### > Motivation：

Orthogonal Frequency Division Multiplexing (OFDM) is a multiplexing technology which is widely used in 4G and 5G. The system utilizes OFDM’s orthogonal property, which admit us to set subcarriers closer without interference in the frequency domain. Compared with single carrier system, we can transmit more data into same bandwidth. In this way, we can reach higher transmit rate. And due to its narrowband property, we can use a one-tap equalizer for channel compensation, which can reduce the complexity a lot. In this project, we tried to construct an end-to-end OFDM communication system by HLS.

![image](https://user-images.githubusercontent.com/102524142/174599266-031b3a6c-852f-442a-858c-c50b011f02cd.png)

### > Problem Statement：

In wireless communication system, multipath and fading noise are the two main purposes we would like to solve. We can’t control how signal transmitted from transmitter to receiver in wireless system. Each path may arrived receiver through different channel fading gain and wastes different time. This may cause some difficulties for receiver to recover the transmit data. Due to the reason we mentioned, we tried to construct a system based on OFDM which have the ability to conquer all of the non-ideal effects.

![image](https://user-images.githubusercontent.com/102524142/174599731-0d55d8b7-5141-48d4-a452-58ff461b25d4.png)

![image](https://user-images.githubusercontent.com/102524142/175023096-8bbf17da-9eb5-48ad-8b11-47b6a3694bfb.png)

### > Project Scope
 #### 。System Architecture：
 The block diagram below is the architecture we used in this project. We connected all the kernels through hls::stream type.
 
 ![image](https://user-images.githubusercontent.com/102524142/174599880-a740197d-dfab-4da7-938d-f461f42bd2c8.png)
 
 And the picture below is the structure of the host program we used in this project. The detail of the top module is the structure we mentioned beforehand.
 
![image](https://user-images.githubusercontent.com/102524142/175022728-59e2e728-ebb8-4882-98d4-0f26d91f2f41.png)

 #### 。Specification：
1. FFT Size : 64 with SSR = 2
2. CP Length : FFT Size/4
3. Pilot Location: Block Type, 8*i for i = 0,1,...
4. Modulation : 16-QAM
5. SNR : [10:5:30]
6. Channel Model : Multipath (3-tap,6-tap) with Gaussian random
7. Total Data Size : (32x32)x7=7168 pixels
8. Platform : U50

(The whole system can be easily extended to other designs through modified the parameters in myfix4_dataflow_final/src/data_path.hpp)

### > Optimization Issues：
The most important thing we should mentioned is that if we have a function call in a for loop, the tool will recreate the function structure every iterations, this will lead to worse II.
So in the below parts, we compare the performance difference between the version with function calls in for loops and the other version with for loops inside the functions. 

### > Simulation Results：
#### 。SYNTH Results

After cloning the whole project, we can use the below command to perform the project and check the performance (you should first change your folder into myfix4_dataflow_final/) : 

>make run CSIM=1 CSYNTH=1 COSIM=1

1. Utilization :

The tables below are the hardware resources utilization comparison between the system before and after optimization : 

 - With II Violation : 
 
 ![image](https://user-images.githubusercontent.com/102524142/174608540-4d911c0b-5cb7-4415-b7dd-4564d120ef44.png)

 - Without II Violation : 

![image](https://user-images.githubusercontent.com/102524142/174608627-a63e5727-d7a8-48aa-adcf-15670a987898.png)

2. Latency : 

The tables below compares the difference of latency between the system before and after optimization. However, latency of dataflow in CSYNTH stage can't works, we should analysis the latency of Tx and Rx after COSIM done.

 - With II Violation : 
 
![image](https://user-images.githubusercontent.com/102524142/174608763-5f989d38-2ec6-4e1a-958b-72aa78b94f56.png)

 - Without II Violation : 

![image](https://user-images.githubusercontent.com/102524142/174608820-2d6e1cb0-1800-4a0a-8641-c4972ea0654c.png)

#### 。COSIM Results

The tables below are the latency after COSIM, the latency of Tx and Rx reduce a lot after optimization, which means dataflow works.

- With II Violation :

![image](https://user-images.githubusercontent.com/102524142/174608918-490d3ab5-e814-44f5-a6a2-5a44381e1664.png)

- Without II Violation : 

![image](https://user-images.githubusercontent.com/102524142/174608967-db85d0c6-71b3-4452-bb79-3b236b95f35e.png)


#### 。HW Emulation Results

  -  With II Violation :
  
![image](https://user-images.githubusercontent.com/102524142/174609070-3cb7f18c-ece9-4ff1-8ab4-68e655776c3b.png)![image](https://user-images.githubusercontent.com/102524142/174609076-76de0177-0945-4d1d-b989-618d1fe8c6dd.png)

- Without II Violation:

![image](https://user-images.githubusercontent.com/102524142/174609143-17006aba-022c-473c-af85-96b17e48beca.png)![image](https://user-images.githubusercontent.com/102524142/174609153-b5c00d34-04d5-4cb4-816e-afa95de9e7b9.png)

input data size = 1064(~1024, it close to the size of an 32x32 pixels picture)

![image](https://user-images.githubusercontent.com/102524142/174609290-e9df5780-bae5-4c08-8c37-853d17d56c08.png)

Obviously, we can found that after optimization the system without II Violation hava lower emulation time than the system with II Violation.

#### 。Picture Recovery 

- 3-tap channel with pilot interval=8
![image](https://user-images.githubusercontent.com/102524142/175021346-5e7c0751-6559-4d34-b75c-d23fff86759e.png)

- 6-tap channel with pilot interval=8
![image](https://user-images.githubusercontent.com/102524142/175021327-1876134e-678f-40b2-aadc-74678e30de7e.png)

- 6-tap channel with pilot interval=4
![image](https://user-images.githubusercontent.com/102524142/175021339-3138710e-7ab5-4a06-ad6f-561a57026415.png)


#### 。Error Rate Comparison
![image](https://user-images.githubusercontent.com/102524142/175021080-93ee1d97-8738-43d7-bd6d-479e5d4d9076.png)

#### 。Throughput
370.6449 frame/sec

394.37K pixel/sec

3.1549M bit/sec

### >Conclusion
In this project we successfully constructed the OFDM based communication system. And we also avoid all of the II violations in the system.


## Host Usage
1. The source code is found in the following directory

- with_II_violation_host
```
./OFDM_Implemented_by_HLS/with_II_violation_host/host/streaming_free_running_k2k/
```

- without_II_violation_host
```
./OFDM_Implemented_by_HLS/without_II_violation_host/host/streaming_free_running_k2k/
```

2. Command to generate the design for specified Target and Shell

```
make all TARGET=<sw_emu/hw_emu/hw>
```

3. Command to run application in emulation
```
make run TARGET=<sw_emu/hw_emu/hw>
```























