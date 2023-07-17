# Master Research (Major)
# Optimized-FDanQ: Implementation of Hybrid Neural Network "DanQ" on Cloud Multi-FPGA and its Optimization under Given Costs

- - -
## Background
- - -
There are so many DNA sequences that people have to work on. One of the genome analysis that people have to face is to find the function of DNA from a DNA sequence. Recently, Machine Learning has been used to find the function of DNA from a DNA sequence. However, training a machine learning model for DNA sequences takes much time due to the size of the dataset.
Since DNA sequence can be represented by the bit-width of two, FPGA has a substantial advantage of processing these kinds data because FPGA can construct a dedicated state machine. Also, FPGA can be a useful resource for processing fast by pipelining. 

- - - 
## Objectives
- - - 
The purpose of this research is to accelerate a training of a deep learning for genome data by implementing on multi-FPGA. The main focus of our research is an optimization using AWS EC2 F1 instance in AWS cloud service which has multiple FPGA. By changing the size of instances, we can optimize the training time as well as instance usage fee depending on a user’s needs.

- - - 
## Approach
- - -
- DanQ: Target Hybrid (CNN & RNN) Model for genomics data

![image](https://github.com/tinaba96/master/assets/57109730/cf69250c-abe9-4c8f-b234-f7555692fd1c)


- Mutli-FPGA Implementation using AWS F1 Instance

The overview of the FPGA Implementation

![image](https://github.com/tinaba96/master/assets/57109730/909df276-43a6-47c1-b23b-2854795d3a9c)

By separating the process on multiple FPGAs the way they can process individually, I can obtain faster training time.
I also indicate the result we obtained by implementing the DanQ model on FPGAs. We show three different implementations that are implemented on single FPGA, dual FPGA and 8 FPGAs.

![image](https://github.com/tinaba96/master/assets/57109730/e1f0325d-7e3e-4d4a-9477-5c5fa2e9032b)

I focused on the BiLSTM layer, which consumes about 48% of the whole training time. BiLSTM is time-consuming because there are two LSTM to process. Also, a BiLSTM layer is relatively easy to divide the process which leads to the availability of parallel processing. By dividing these two BiLSTM process into two parts, the processing time can be decreased: the LSTM which reads the input forward is implemented on an FPGA while the other LSTM which reads the input backward is implemented on another FPGA. In addition, we process the BiLSTM layer in parallel using 8 FPGAs by dividing each LSTM layers into 4 parts independently.


The overview of the Dual FPGA Implementation

![image](https://github.com/tinaba96/master/assets/57109730/644eec14-1ca4-40a9-8798-63bbcc6f6423)

The overview of the 8 FPGA Implementation

![image](https://github.com/tinaba96/master/assets/57109730/7971036b-98c5-4125-83b8-94a70dd50177)


- Cloud Optimization under Give Costs
My implementation can change the instance size by saving the parameters which are needed to continue the training, such as weights. This enables to control the training time with the instance usage fee. I propose a system to optimize the usage fee depending on the training time given by users. The usage fee fluctuates each time for using an instance in real cloud services such as AWS. Therefore, I introduce to change the instance size during the training according to the usage fee at that time. 

![image](https://github.com/tinaba96/master/assets/57109730/1c169898-44f5-4ec8-ae9e-3fc82d9764bf)

- - - 
## Result & Conclusion
- - -
- FPGA Implemetaion
There is a big task for improving the training time for deep learning, especially in the field of genomics. There are huge datasets of DNA sequences to estimate the chromatin effect.
Therefore, it is necessary to accelerate the training time, and we proposed a method of using an FPGA. We focused on BiLSTM Layer and implemented it on AWS EC2 F1 Instances.
As a result, we could accelerate the DanQ model by using a single FPGA by 1.05x compared to our CPU implementation. Besides, our implementation on 8 FPGAs gets 2.87x faster than the dual FPGA implementation and 6.00x faster than the CPU implementation.

![image](https://github.com/tinaba96/master/assets/57109730/8ca56459-6f4a-4a55-87a7-13505f2d9d32)

- Cloud Optimization
There are so many cloud users who concern the trade-off between the cloud usage fee and the execution time. This is because the cloud usage fee always changes each time.
Therefore, changing the instance size during the training depending on the cloud usage fee at that time leads to a better result in terms of the training time and the cloud instance usage fee.
Comparing a case of using 8 FPGAs for all time and a case in which we optimized the number of FPGAs during the training with our model, I obtained the result that we can save the cloud usage fee for 56.28% by only taking 16.00% extra time. Therefore, I can optimize the training time as well as the instance usage fee depending on the user’s needs.

![image](https://github.com/tinaba96/master/assets/57109730/bd51c099-913d-4744-a838-b8bdf598d4b7)



- - - 
- - - 

# How To

In each `/src` files, there are `/host` and `/kernel`. `/host` is the implementation for running in CPU and `/kernel` is the implementation for running in FPGA.
To exectue in FPGA, I used High Level Synthesis so that I can mainly use C++ to implement. 

The flow to execute using AWS F1 Instance is;
1. Functional Specification
2. High-Level Synthesis (Vivado HLS / Vitis)
3. RTL Synthesis 
4. Creating bitstream
5. Creating Amazon FPGA Image (AFI)
6. Execution on FPGA


## High-Level Synthesis (Vivado HLS / Vitis)
High Level Synthesis (HLS) tools are widely known and used for a FPGA implementation rather than using Hardware Description Language (HDL). 

First, please install vivado_hls
https://www.xilinx.com/support/download.html

After finishing the setup, please run
```
source /home/vivado_init.sh
```
and start the vivado_hls
```
vivado_hls
```

Import your project and compile the C project and execute from the console.
After confirmimng the correct compilation and exectuion, start the synthesis and get report.

From the report, you can check the performance and hardware utilization of RTL such as verilog HDL generated by the High-Level Synthesis. You can analyize not only the design latency but also utlization of BRAM, DSP, FF and LUT that are included in RTL design as well as the power consumption.

ex)
[HLS Report](https://github.com/tinaba96/master/tree/master/major_research/reports/solution_HLS)





## SDAccel
### What is SDAccel
SDAccel is a software development environment provided by Xilinx for designing and deploying applications on Xilinx FPGA (Field-Programmable Gate Array) devices. It is part of the Xilinx Vitis unified software platform, which enables developers to target and optimize their applications for Xilinx FPGAs, SoCs (System-on-Chips), and ACAPs (Adaptive Compute Acceleration Platforms).

SDAccel provides a high-level programming model that allows developers to design their applications using OpenCL, C, C++, or RTL (Register Transfer Level) languages. It includes a set of development tools and libraries that assist in the design, simulation, optimization, and deployment of FPGA-based applications.

```
source /usr/local/bin/sdaccel.sh
```

https://www.xilinx.com/htmldocs/xilinx2019_1/sdaccel_doc/yrc1534452173645.html

:::note   
OpenCL is a programming framework that can be used for CPUs, GPUs and FPGA implementation. In the context of FPGA, OpenCL enables developers to write code that targets FPGA devices, allowing them to take advantage of the parallel processing capabilities of FPGAs for accelerated computing.  
:::  


### BUild Process using SDAccel
![Build Process](https://github.com/tinaba96/master_old/assets/57109730/98b9b00f-d698-46eb-99fb-f6408a3b15fc)

In this build process of SDAccel tool, execution file (.exe) for host applicatiojn and FPGA binary file (.xclbin) will be generated.

#### Build for Host

Host code that are implemented by C/C++ using OpenCL API will be compiled by xilinx C++ compiler (`xcpp`) and generate execution file (.exe) for Host CPU. `xcpp` compiler is the wrapper of standard `gcc` compiler.

You can also compile the host source as following commands
```
g++ -std=c++11 main.cpp && ./a.out

```
#### Build for Kernel (hardware)

`xocc` compiler is used for compiling the kernel accelerator function.
The second part of the build process links one of more kernels into platform to create the FPGA binary container `xclbin` file.

ex)
```
xocc -c -k krnl_vadd --platform xilinx_u200 -t sw_emu vadd.cl vadd.h -o krnl_vadd.xo --report_level 2 --report_dir reports
```
```
xocc -l --platform xilinx_u200 -t sw_emu –-nk krnl_vadd:1:krnl_vadd1 --sp krnl_vadd1.m_axi_gmem:DDR[3] -o vadd.xclbin krnl_vadd.xo
```

## How to compile and execute the sorce in FPGA using SDAccel

### Check Makefile
please check and change the following varibles depending on your environments in the Makefile.

```
COMMON_REPO = 

TARGETS := hw
TARGET := $(TARGETS)
DEVICE := $(DEVICES)
XCLBIN := ./xclbin

include ./utils.mk

BUILD_DIR := ./_x.$(TARGET).$(DSA)

BUILD_DIR_dl = $(BUILD_DIR)/

CXX := $(XILINX_SDX)/bin/xcpp
XOCC := $(XILINX_SDX)/bin/xocc

#Include Libraries
include libs/opencl/opencl.mk
include libs/xcl2/xcl2.mk
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)
HOST_SRCS += $(xcl2_SRCS)
CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g -std=c++11
LDFLAGS += $(opencl_LDFLAGS)

HOST_SRCS += 
KERNEL_SRCS += 

# Host compiler global settings
CXXFLAGS += -fmessage-length=0
LDFLAGS += -lrt -lstdc++

# Kernel compiler global settings
CLFLAGS += -t $(TARGET) --platform $(DEVICE) --save-temps

EXECUTABLE = 
CMD_ARGS = $(XCLBIN)/dl.$(TARGET).$(DSA).xclbin

EMCONFIG_DIR = $(XCLBIN)/$(DSA)

BINARY_CONTAINERS += $(XCLBIN)/dl.$(TARGET).$(DSA).xclbin
BINARY_CONTAINER_dl_OBJS += $(XCLBIN)/kerneldl.$(TARGET).$(DSA).xo

```

The build process and execution process mentioned above are all prepared in this Makefile.

### Software Emulation
Compilation of software emulation targets is the fastest. It is primarily used to verify that the functionality is correct when the host and kernel code are run together. Since the `xocc` compiler performs the minimum necessary transformations to run the kernel code along with the host code, it is useful to check for functional correctness early in the creation of the final binary. The software emulation flow can be used to tune algorithms and debug functional problems, and iterative work can be quickly performed to improve the code.

You can run this command for Software Emulation
```
make all TARGETS=sw_emu DEVICES=xilinx_u200_xdma_201830_2
```

### Hardware Emulation
In the hardware emulation flow, the kernel model is generated in hardware description language (RTL Verilog) by the `xocc` compiler. The hardware emulation flow helps to check if the final binary produced is logically correct after synthesizing RTL from C, C++, or OpenCL kernel code. The hardware emulation flow allows debugging using a waveform viewer in case the system is not functioning as intended.


You can run this command for Hardware Emulation
```
make all TARGETS=hw_emu DEVICES=xilinx_u200_xdma_201830_2
```

### Hardware Execution
This is the exectuion on the real system. It runs the host application using the actual hardware implementaion of the kernel in order to verify the system runs correctly and with the required performance. It provides accurate performance results in the final FPGA implementation with long build times.

You can run this command for Hardware execution.
```
make check TARGETS=hw DEVICES=xilinx_u200_xdma_201830_2
```

Here is the example of the execution report.  
https://github.com/tinaba96/master/blob/master/major_research/reports/profile_summary.html


