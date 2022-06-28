# LabA-no.8
Dataflow Viewer , FIFO sizing and deadlocks

# 1. Dataflow Viewer

found in the `src/dataflow` folder.

the following command: 

```C++
vitis_hls -p script.tcl
```

Click the green Run Icon ![image](https://user-images.githubusercontent.com/102540321/160496680-c34216b5-aa40-47d7-95f2-c04b6974bace.png)
to synthesize the design.

Right-click on the top-level function name (diamond) and select the Open Dataflow Viewer command to open a new Dataflow viewer window for the function as shown below.

![image](https://user-images.githubusercontent.com/102540321/160496887-d276d891-3ce3-49e3-b411-78af40d1201a.png)

##  RTL Co-simulation
select the Solution > Run C/RTL Co-Simulation command.

![image](https://user-images.githubusercontent.com/102540321/160496916-297c7980-e368-44b0-8568-3b416127e6ae.png)

Enable the Channel (PIPO/FIFO) Profiling checkbox.

![image](https://user-images.githubusercontent.com/102540321/160496939-8da6d064-9abb-4ee4-8204-7b92585b5b7c.png)

Click OK.

##  Dataflow Performance Using Waveform
select the Solution > Run C/RTL Co-Simulation command.

![image](https://user-images.githubusercontent.com/102540321/160497179-c6124c5e-7666-4f23-a9e3-05dcf2ef4c2b.png)

Using **Vivado XSIM** simulator.

Dump Trace choose **all**.

Enable the **Wave Debug** checkbox.

Enable the **Channel (PIPO/FIFO) Profiling** checkbox.

![image](https://user-images.githubusercontent.com/102540321/160497217-4dde628b-9869-4706-8d1e-71d5fa19a910.png)

**Waveform**

![image](https://user-images.githubusercontent.com/102540321/160497755-0a5f7ee6-495d-46a3-8438-5bc215e89440.png)

![image](https://user-images.githubusercontent.com/102540321/160497778-4764de4b-5ea2-4750-b973-828c47b99a01.png)

![image](https://user-images.githubusercontent.com/102540321/160497784-d1967afe-1a6b-4f1a-820e-32ea6ac5c30b.png)

# 2. FIFO Sizing And Avioding Deadlocks

found in the `src/deadlock` folder.

the following command: 

```C++
vitis_hls -p script.tcl
```
Click the dropdown menu next to the green Run command![image](https://user-images.githubusercontent.com/102540321/160501672-74d8e931-4021-4cd3-8e04-f52f0c45200b.png)
and select **C Simulation**.Run C Simulation.

![image](https://user-images.githubusercontent.com/102540321/160501728-730278ce-2a99-4193-ac36-3e172edda7be.png)



Click the green Run Icon ![image](https://user-images.githubusercontent.com/102540321/160496680-c34216b5-aa40-47d7-95f2-c04b6974bace.png)
to synthesize the design.

select the Solution > Run C/RTL Co-Simulation command.

Enable the Channel (PIPO/FIFO) Profiling checkbox.

![image](https://user-images.githubusercontent.com/102540321/160501863-6455ddf5-cbed-4755-8efa-457cc7d776c7.png)

Co-Simulation has error messages:

![image](https://user-images.githubusercontent.com/102540321/160501953-ddf974e1-5348-4962-aaad-ce536f28adb8.png)

Click on the green **+** command in the Dataflow Graph toolbar menu to expand all channels and sub-processes in the design

![image](https://user-images.githubusercontent.com/102540321/160502025-8121ce09-bb06-46f8-a905-65a2df732ffe.png)

expand all:
![image](https://user-images.githubusercontent.com/102540321/160502051-c138bd92-ee53-44a2-addf-0e1b769638a3.png)


There are three ways to do this FIFO sizing:

1.Manual FIFO Sizing

2.Global FIFO Sizing

3.Automated FIFO Sizing

**1.Manual FIFO Sizing**

As the above figure shows, right-click on the highlighted data_channel1 row(and data_channel2) and select the Modify Depth option. This displays the Modify Depth dialog box as shown below.

![image](https://user-images.githubusercontent.com/102540321/160525835-fb37110a-2378-47c9-9d06-e47436574eff.png)

Set the new depth as 4

Changing complete.Rerun co-simulation.

![image](https://user-images.githubusercontent.com/102540321/160503031-59e03031-33f3-4a94-aa05-721c155ef206.png)


Now repeat the above steps and increase the depth of data_channel1 and data_channel2 to 10.

![image](https://user-images.githubusercontent.com/102540321/160503102-da887c81-a4b2-45b2-b0c3-877752793f1e.png)


Repeat the FIFO resizing steps on these channels and set the new depth to 10

![image](https://user-images.githubusercontent.com/102540321/160503137-d02a47b4-5339-400d-97cc-4131248ce23d.png)

Repeat the FIFO resizing steps on these channels and set the new depth to 10

![image](https://user-images.githubusercontent.com/102540321/160503152-6f9f4943-8485-411b-b189-88637ecd7e77.png)

To back-annotate your solution to the source code, select all the channels that need the new depth setting (by pressing Ctrl and selecting the channel with a mouse click) and select the **Back Annotate the New Depth into the Design** option

![image](https://user-images.githubusercontent.com/102540321/160503454-0cb5f2d3-5ba5-44dc-ab27-382ca7c0930c.png)

![image](https://user-images.githubusercontent.com/102540321/160503467-01cf9569-a652-4ce7-81e6-89b9945a6bee.png)

![image](https://user-images.githubusercontent.com/102540321/160503473-52b973ec-495d-49c2-a6af-c127cded0e10.png)

Rerun cosimulation

![image](https://user-images.githubusercontent.com/102540321/160503536-3944c33f-0ae0-4a28-8ff6-54c5ad1a2614.png)

**2.Global FIFO Sizing**

Exit the Vitis HLS GUI and restart it by executing the following at the command line:


```C++
vitis_hls -p script.tcl
```

Click the dropdown menu next to the green Run command![image](https://user-images.githubusercontent.com/102540321/160501672-74d8e931-4021-4cd3-8e04-f52f0c45200b.png)
and select **C Simulation**.Run C Simulation.

![image](https://user-images.githubusercontent.com/102540321/160501728-730278ce-2a99-4193-ac36-3e172edda7be.png)


Click **solution ** **solution Settings...**

![image](https://user-images.githubusercontent.com/102540321/160504210-adb2f3b5-3ca3-49a1-bb36-0498558a4113.png)

Changing **override_user_fifo_depth** to 40

![image](https://user-images.githubusercontent.com/102540321/160504223-b535ca81-bf99-4c21-944e-b0d391f6944e.png)


Run Cosimulation

![image](https://user-images.githubusercontent.com/102540321/160504328-2f90e7a8-2ed2-43b3-bbd9-2b605bfa5f60.png)


**3. Automated FIFO Sizing**

It requires repeated cosimulation runs and may take a while to converage

It is a heuristic algorithm, and in some cases it may never converage

Exit the Vitis HLS GUI and restart it by executing the following at the command line:


```C++
vitis_hls -p script.tcl
```

Click the dropdown menu next to the green Run command![image](https://user-images.githubusercontent.com/102540321/160501672-74d8e931-4021-4cd3-8e04-f52f0c45200b.png)
and select **C Simulation**.Run C Simulation.

![image](https://user-images.githubusercontent.com/102540321/160501728-730278ce-2a99-4193-ac36-3e172edda7be.png)

select the Solution > Run C/RTL Co-Simulation command.

Enable the **Channel (PIPO/FIFO) Profiling** checkbox.

Enable the **Dynamic Deadlock Prvention** checkbox.

![image](https://user-images.githubusercontent.com/102540321/160504596-fac1fd12-6c7b-4e60-bc9a-cf9ace6a4ef5.png)

result:

![image](https://user-images.githubusercontent.com/102540321/160504625-4670914b-b8de-4e38-8ee0-2a82d329b2e2.png)


Manually back-annotate these FIFO sizes.

![image](https://user-images.githubusercontent.com/102540321/160504677-ab48e640-b6f2-43ca-92cf-168948c9d308.png)

