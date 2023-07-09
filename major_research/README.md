#

## Background
There are so many DNA sequences that people have to work on. One of the genome analysis that people have to face is to find the function of DNA from a DNA sequence. Recently, Machine Learning has been used to find the function of DNA from a DNA sequence. However, training a machine learning model for DNA sequences takes much time due to the size of the dataset.
Since DNA sequence can be represented by the bit-width of two, FPGA has a substantial advantage of processing these kinds data because FPGA can construct a dedicated state machine. Also, FPGA can be a useful resource for processing fast by pipelining. 


## Objectives
The purpose of this research is to accelerate a training of a deep learning for genome data by implementing on multi-FPGA. The main focus of our research is an optimization using AWS EC2 F1 instance in AWS cloud service which has multiple FPGA. By changing the size of instances, we can optimize the training time as well as instance usage fee depending on a user’s needs.

## Approach
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

## Result & Conclusion

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


# How To

In each `/src` files, there are `/host` and `/kernel`. `/host` is the implementation for running in CPU and `/kernel` is the implementation for running in FPGA.
To exectue in FPGA, I used High Level Synthesis so that I can mainly use C++ to implement. 

The flow to execute using AWS F1 Instance is;
1. Functional Specification
2. High-Level SYnthesis
3. RTL Synthesis
4. Creating bitstream
5. Creating Amazon FPGA Image (AFI)
6. Execution on FPGA





High Level Synthesis (HLS) tools are widely known and used for a FPGA imple- mentation rather than using Hardware Description Language (HDL). 




