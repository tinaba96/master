# Researches in Japan Advanced Institute of Science and Technology

- - -
## Major Research
- - -
### Optimized-FDanQ: Implementation of Hybrid Neural Network "DanQ" on Cloud Multi-FPGA and its Optimization under Given Costs

There are so many DNA sequences that people have to work on. One of the genome analysis that people have to face is to find the function of DNA from a DNA sequence. Recently, Machine Learning has been used to find the function of DNA from a DNA sequence. However, training a machine learning model for DNA sequences takes much time due to the size of the dataset. Besides, since DNA sequences are represented by four types of the base, which are Adenine, Guanine, Thymine, and Cytosine, it can be represented by the bit-width of two. FPGA has a substantial ad- vantage of processing these kinds of string operations because FPGA can construct a dedicated state machine. Also, FPGA can be a useful resource for processing fast by pipelining.
In addition, more and more companies are using cloud services such as AWS for their acceleration. Since cloud users always have to consider the trade-off between execution time and cloud instance usage fee, it is necessary to optimize these two things depending on each cloud user.

 In this research, I proposed the following two ideas.
- Mutli-FPGA Implementation
- Cloud Optimization under Give Costs

I tried to accelerate a deep learning model called DanQ using FPGAs. It is said that FPGA is sufficient for data such as genomics data because DNA sequence can be represented by 1 bit and does not require a large bit-width for processing. I mainly focused on a BiLSTM layer, which is the most time-consuming part of the DanQ model. I quantized the parameters of the BiLSTM layer to the bit width of 16 in order to implement on FPGA without losing the training accuracy. I also implemented the BiLSTM layer to multiple FPGAs to obtain a better execution time. As a result, I could accelerate the DanQ model by using a single FPGA by 1.05x compared to my CPU implementation. Besides, my implementation on 8 FPGAs gets 2.87x faster than the dual FPGA implementation and 6.00x faster than the CPU implementation.
Also, my implementations can change the resource size during the execution to optimize the execution time or cloud instance usage fee depending on the users’ needs. Comparing a case of using 8 FPGAs for all time and a case in which I optimized the number of FPGAs during the training with my model, I obtained the result that I can save the cloud usage fee for 56.28% by only taking 16.00% extra time.


For more detials, see [here](https://github.com/tinaba96/master/tree/master/major_research)

- - -
## Minor Research
- - - 
### Low-Complexity Quantization of decoding using Viterbi Algorithm

I proposed to quantize the probability-domain implementation of the Viterbi algorithm decoder in order to decrease the memory utilization when I implement on hardware such as FPGA. I first implemented the viterbi decoder for the convolutional encoder using floating point without using the toolbox from MATLAB to compare with the quantized version. Next, I used uniform quantization for the channel to quantize from 106 level to 2 level.  
As a result, I obtained that it is difficult to quantize the viterbi decoder to 2 level without losing the BER performance. This indicates that when the inputs to the viterbi decoder have only 2 differrent values, it is difficult for viterbi decoder to estimate the transmitted codeword. However, I could manage to quantize it to 4 level or more with the similar BER performance to that of float version. Hence, I obtained that it is possible to make the decoder very low complexity without losing the accuracy.

For more detials, see [here](https://github.com/tinaba96/master/tree/master/minor_research)

