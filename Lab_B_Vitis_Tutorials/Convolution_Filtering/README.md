# HLS_Lab_B Convolution Filtering

## Algorithm introduction :

影音應用程式廣泛使用不同類型的濾波器，於不同的情況，像是濾除雜訊，操縱動態模糊，增強顏色和對比度，邊緣檢測等。

  卷積濾波器的核心觀念是圍繞在對像素進行某種形式的數據加權，這種濾波器是對影音中每一幀中所有像素進行的，它進而重新定義像素與其周圍區域相關的數量和類型。

  卷積運算本質上是在像素集和係數矩陣上執行的加權乘積的總和，下圖說明了如何計算像素的卷積，濾波器為大小 3x3 的係數矩陣，計算過程包括：
* 選擇以黃色標註顯示的輸入像素
* 提取大小與濾波器相同的矩陣
* 計算提取的矩陣和係數矩陣的元素乘積和 
* 將乘積和放置在與前面所選輸入像素相同的位置上
* 
![](https://i.imgur.com/faMbNYN.png)

## Build flow :
**Clone Git Repo**
Clone the repository using the following command:
`git clone https://github.com/Xilinx/Vitis-Tutorials.git`
**Copy and Extract Large Files**
Copy and extract large files in convolution tutorial directory as follows:
```
cd /VITIS_TUTORIAL_REPO_PATH/Hardware_Acceleration/Design_Tutorials/01-convolution-tutorial
wget https://www.xilinx.com/bin/public/openDownload?filename=conv_tutorial_files.tar.gz -O conv_tutorial_files.tar.gz
tar -xvzf  conv_tutorial_files.tar.gz
```
NOTE : VITIS_TUTORIAL_REPO_PATH is the local directory path where git repo is cloned.

**Setting Up the Vitis Tool**
Setup the application build and runtime environment using the following commands as per your local installation:
```
source <XILINX_VITIS_INSTALL_PATH>/settings64.sh
source <XRT_INSTALL_PATH>/setup.sh
```

## result / analysis
**Running the Software Application :**
 
![](https://i.imgur.com/lpD64ZE.png)

測得的性能僅為"2.42FPS"，而所需的輸送量為 60 FPS，因此為了滿足所需的性能，軟體實現需要加速25倍。( 373 / 15.0644 = 24.76 )

**Running the Hardware Application :**

![](https://i.imgur.com/B9Sru5w.png)

**Running Software Emulation :**

 ![](https://i.imgur.com/mxv3T2e.png)

輸入和輸出影像如下所示，將濾波器類型選擇設置為3，以執行邊緣檢測：

 ![](https://i.imgur.com/qntPwa3.png)
![](https://i.imgur.com/Et0IfAw.png)
