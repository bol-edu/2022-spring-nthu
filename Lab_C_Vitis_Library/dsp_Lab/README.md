# HLS-Lab_C-dsp-library-report
SSR FFT

程式碼在branch:"master"裡

# 1. FFT

Discrete Fourier Transform(DFT)是一種被廣泛運用於通訊以及訊號處理方面的技術，而Fast Fourier Transform(FFT)透過對DFT運算式的化簡，可以將DFT的運算複雜度由O(N^2)降到O(NlgN)，有效的降低硬體資源以及減少時間延遲，更適用於需要即時性的系統。
  
一個長度為N的DFT的定義如下，FFT使用了twiddle factor <img src="https://user-images.githubusercontent.com/102540321/166137662-fb42b021-ee99-41de-a114-7ab347edd289.png" width="100" height="20">
的對稱性以及週期性有效的降低計算複雜度。

![image](https://user-images.githubusercontent.com/102540321/166138452-b72e01ba-72f8-4be0-882f-d14378669031.png)

Radix-4 butterfly的運算如下所示：

![image](https://user-images.githubusercontent.com/102540321/166138467-c218776e-cd30-4f5b-b6f4-0d6ca795e55b.png)

16-point FFT使用Radix-4 butterfly整體架構如下圖所示，總共使用了lg(FFT_size)/lg(radix_size) = lg(16)/lg(4) = 2個階層，每一個FFT stage使用了FFT_length/radix_size = 16/4 = 4個radix-4 butterfly。


# 2. 架構
首先將資料從Array轉換為HLS streaming interface，將相關input data進行配對，先後進行兩個FFT stage的運算，接著將HLS streaming interface轉回Array形式，最後把順序被打亂的結果轉回正確的順序。

![image](https://user-images.githubusercontent.com/102540321/166138513-23f045f2-0922-4658-bd11-adaa81c07414.png)

### **1. castArrayS2Streaming**

為了後續可以和其他使用HLS streaming interface的block連接，將二維陣列轉換為 streaming interface。

![image](https://user-images.githubusercontent.com/102540321/166138536-a481918a-74fb-4c07-8294-c979768b8c5b.png)

### **2. StreamingDataCommutor**

透過StreamingDataCommutor來將需要一起計算的資料進行配對。

![image](https://user-images.githubusercontent.com/102540321/166138563-f0db160b-9f0e-4f7c-9a75-117eae77a59a.png)

![image](https://user-images.githubusercontent.com/102540321/166138566-d0d8ff04-fcab-4caf-b110-534aecb23692.png)

![image](https://user-images.githubusercontent.com/102540321/166138571-3994756b-28d6-41f5-ae1a-dbc3da5c8daf.png)

![image](https://user-images.githubusercontent.com/102540321/166138576-2a742335-7558-4dfc-b012-2d9589d71a46.png)

![image](https://user-images.githubusercontent.com/102540321/166138584-ab1e6016-3171-489b-81fc-9b5d4d8b83c6.png)

>a) 設定控制參數

>b) 宣告參數為ARRAY_PARTITION

>c) 確認input FIFO內是否有資料使用，若是有則read data

>d) 控制Commutor的執行次數及設定Commutor控制訊號

>e) 根據資料是否存在以及目前的執行次數決定放入資料或0，並使用MUX對資料的排序進行調整，使對應的data可以在接下來的stage進行計算。

>f) write data

### **3. fftStageKernelS2S**

fftStageKernelS2S用於控制data進行運算，根據參數設定決定執行butterfly的次數，並在完成butterfly運算後將output與twiddle factor相乘。

![image](https://user-images.githubusercontent.com/102540321/166138656-9da7167d-63e2-4ce3-8c9e-589e10958754.png)

>a) 設定相關參數決定fft和butterfly運算的次數和型態使用PIPELINE II=1 rewind

>b) 判斷是否有需要進行計算的資料存在

>c) read data

>d) 進行butterfly運算，由SSR的數值決定使用哪種架構的butterfly，在這裡設定SSR=4，因此使用radix-4 butterfly進行計算。

>e) 根據總FFT的長度以及當前的stage來決定對index k向左移多少位，平移後的index k’用於決定twiddle factor的大小，最後將剛才經過butterfly計算的結果乘以twiddle factor

>f)  write data

### **>> radix-4 butterfly**

![image](https://user-images.githubusercontent.com/102540321/166138685-891e5fd7-0405-4a8e-94fe-755375fa82b5.png)

![image](https://user-images.githubusercontent.com/102540321/166138691-a4559161-8d09-4c56-8e12-e512726fcde2.png)

> a.) local_r4_kernel用來控制對不同輸出訊號，輸入訊號之間的關係。其中l_sign=1代表目前進行的是FFT，I_sign=-1則代表IFFT。
 
> b.) read data
 
>c.) 將輸入訊號與對應local_r4_kernel中的array進行內積，透過complexMultiply將對應元素相乘後，再使用AdderTree相加。
 
>d.) write data

### **4. fftStageKernelLastStageS2S**

fftStageKernelLastStageS2S用於整個FFT運算的最後一個stage，由於最後一個stage的twiddle factor都為1，因此可以省去乘以twiddle factor的步驟，直接將完成butterfly運算的data寫入。

### **5. convertSuperStreamToArrayNScale**

將原本用stream傳輸，且資料型態用SuperSampleContainer的輸入，轉化成R條平行的datapaths，同時依據現在採用FFT還是IFFT決定是否要做scaling。(FFT不需要，IFFT需要將輸出除以FFT size)

![image](https://user-images.githubusercontent.com/102540321/166140728-4318b085-b3e6-4ab4-8814-1a2983728a75.png)

>(a)輸入輸出協定轉換

>(b)判斷是否為IFFT

>(c)進行scaling運算(沒有scaling就除以1)

### **6. digitReversedDataReOrder**

輸入資料會先進入cacheDataDR暫存資料，再進入WriteBackCacheDataDR做bit reverse運算。因為bit reverse順序在前面的資料可能會比在後面的資料晚到，因此前面cacheDataDR的功用在此，暫存資料直到bit reverse順序輪到該資料再輸出。

![image](https://user-images.githubusercontent.com/102540321/166140747-524a672e-028c-4cda-8224-83f233301cf4.png)

>(a)cacheDataDR函數 : buffer功能。

>(b)WriteBackCacheDataDR函數 : bit reverse運算。


# 3. Simulation and Result Comparison

### **．Parameters Setting :**

1. N : FFT的長度

2. R : Super Sample Rate

3. scaling_mode_enum : 控制運算過程中整體位元數的長度
     
 > a) SSR_FFT_GROW_TO_MAX_WIDTH : 當該階層的位元數超過27後，再進行下一階層的運算之前，對輸出進行位元數的刪減，移除小數點最末位超過27的位 數，適用於input位元數距離27bits還有一段距離時使用。
         
 > b) SSR_FFT_SCALE : 不論位元數是否超過27，在每一個階層運算完成之後，對輸出進行位元數刪減，適用於input位元數原本就接近27bits時使用。
     
 > c) SSR_FFT_NO_SCALING : 運算過程中不對位元數進行控管，當位元數超過27後，會使用額外的DSP資源進行運算，適用於欲確認系統效能時使用。

4. fft_output_order_enum : 控制輸出data的順序

> a) SSR_FFT_DIGIT_REVERSED_TRANSPOSED : 依照完成FFT後的順序依序直接將data輸出。

> b) SSR_FFT_NATURAL : 將完成FFT的data順序經過reorder後再輸出，相較於digit reversed transposed會，需要多經過一個data reorder的步驟來還原順序。

5. twiddle_table_word_length : 決定twiddle table輸出的總位元數(整數+小數)

6. twiddle_table_integer_part_length : 決定twiddle table輸出的整數位元數

### ．C Simulation :

**1. 1D**
     
> a) Matlab
> 
>![image](https://user-images.githubusercontent.com/102540321/166140183-ea1f05ec-71fa-427a-bccf-99dbaa0313d3.png)

> b) float
> 
> ![image](https://user-images.githubusercontent.com/102540321/166140202-a58905af-d479-487a-b769-860cac272cfc.png)

> c) fixed
> 
>> 1. N : 16
>> 
>> 2. R : 4
>> 
>> 3. scaling_mode_enum : SSR_FFT_NO_SCALING
>> 
>> 4. fft_output_order_enum : SSR_FFT_NATURAL 
>> 
>> 5. twiddle_table_word_length : 16
>> 
>> 6. twiddle_table_integer_part_length : 2
>> 
>> 7. input_word_length : 16
>> 
>> 8. input_integer_part_length : 2
>> 
>> ![image](https://user-images.githubusercontent.com/102540321/166140259-88df0492-e0c4-4fe2-ad58-b140264a92cc.png)

> d) cosim input waveform
> 
> ![image](https://user-images.githubusercontent.com/102540321/166144312-b0496e91-dc97-46cc-8a00-6ba40d0064fd.png)

> e) cosim output waveform
> 
> ![image](https://user-images.githubusercontent.com/102540321/166144314-d2b344b5-8350-4d6d-8e55-ba2042552466.png)

**2. 2D**

> a) float
> 
> ![image](https://user-images.githubusercontent.com/102540321/166140331-6d5b451c-1f02-4292-b3af-b666193de610.png)
> 
> ![image](https://user-images.githubusercontent.com/102540321/166140339-6822fb5b-ac3b-4333-9b69-e71ae20d1ddb.png)

> b) fixed
> 
> ![image](https://user-images.githubusercontent.com/102540321/166144538-98a30a91-bccd-4b06-bcd2-331558e25a0f.png)
> 
> ![image](https://user-images.githubusercontent.com/102540321/166144541-efe5df5d-8a6a-42e9-b652-f5296ed4000e.png)

> c) cosim waveform
> 
> ![image](https://user-images.githubusercontent.com/102540321/166144555-e464383b-1446-47b4-a5a0-d6fa15e145f5.png)


### ．Synthesis Results :

**1. 1D float**

> a) PYNQ
>
>![image](https://user-images.githubusercontent.com/102540321/166140638-9ffdb6e8-fbf1-497c-bc53-537c6cc5499c.png)

> b) U50
> 
> ![image](https://user-images.githubusercontent.com/102540321/166140460-6d9775ff-d1cd-432c-9fb3-b19d5d3a2ae8.png)

**2. 1D fixed**

> a) PYNQ
> 
> ![image](https://user-images.githubusercontent.com/102540321/166140486-ce0dff6a-462e-4ec6-9339-215a1ada0697.png)

> b) U50
> 
>![image](https://user-images.githubusercontent.com/102540321/166140514-20251ca3-8729-4bf5-8f02-e06046915fc9.png)


**3. 2D float**

> a) PYNQ
> 
>![image](https://user-images.githubusercontent.com/102540321/166140550-2e982377-d2fe-469a-9b69-a4180f4455b7.png)

> b) U50
> 
>![image](https://user-images.githubusercontent.com/102540321/166140562-9e63647a-2a1d-4268-a065-af2a1507f1fa.png)

**4. 2D fixed**

> a) PYNQ
> 
>![image](https://user-images.githubusercontent.com/102540321/166140585-39e431a2-3f33-4bc5-963a-29b923474e9c.png)

> b) U50
> 
>![image](https://user-images.githubusercontent.com/102540321/166140597-41b35315-ca18-41eb-b375-05fa2ef34476.png)



