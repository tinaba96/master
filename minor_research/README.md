# Master Research
# Low-Complexity Quantization of decoding using Viterbi Algorithm

- - -
## Background
- - -
Recently, massive computation is needed for Information theory. Especially, amount of computation for decoding using viterbi algorithm is one of the problems that should be better in terms of complexity. In addition, there is a case that some process is done in ASIC hardware such as FPGA in order to process faster. In this case, a discussion of hardware utilization is always a problem because size of DRAM is limited on each hardware. Therefore, decreasing the memory utilization and the amount of computation by quantizing the decoder is very efficient.  

![image](https://github.com/tinaba96/master_old/assets/57109730/174ec645-47a6-4e3b-a164-5fe8b234bd67)


- - -
## Objectives
- - -
The purpose of this research is to reduce the hardware utilization of viterbi decoder by quantization without losing the BER performance.

- - -
## Approach
- - -
After I obtained the metric table (LUT) for the channel, I sample the quantized values using cumulative sum. Then, they will be the inputs to the Viterbi decoder. 
I defined transition metrics as Euclidean distance. However, I defined as follows as transition metrics:

![image](https://github.com/tinaba96/master_old/assets/57109730/58886568-80fe-450e-8591-c0cca6f5bd5f)

I replaced the add operation with the maximum operation to make it more simple. This replacement is possible when 2 values, which I compare, have large amount of difference.

### Implementation of float version
I implemented the viterbi algorithm, without using viterbi function from a toolbox form MATLAB. I first generate the input code for the convolutonal encoder randomly and put the AWGN after the encode. As shown [here](https://github.com/tinaba96/master/blob/master/minor_research/final_viterbi_fromscrach_graph.m), I first define a state matrix in order to find a likelihood path for the decoding. Here, I applied transition metrics as euclidean distance between the input to the decoder with noise and possible value which is `0` or `1`. I have 4 different states so that I have `4 ∗ (𝑛 + 3)` as the size of state matrix, where `n` is the length of code. Every time the decoder reads the inputs, it stores a state metric in each state and also remember the best path for the tracing back by keeping a more likely path in the comparison between the two previous state. Since I used Euclidean distance as the transition metrics, I chose the minimum value when I compare the state metrics. The last 2 columns of state matrix are for determining the best path. After getting the best path, I finally compare the output of the decoder with the output of the convolutional encoder to see the Bit Error Rate.



### Implementation of quantized version

I implemented the quantized version of viterbi algorithm without using a function from the toolbox in MATLAB. The flow of the implementation is similar to the float version which I mentioned above. The biggest difference among them is the transition metrics. Here, I used probability as the transition metric instead of Euclidean distance. As shown [here](https://github.com/tinaba96/master/blob/master/minor_research/modified_quantized_viterbi_fromscrach.m), I used DMC as a conditional probability distribution and create a LUT for quantizing the channel output. Since some papers showed a result that it is enough to quantize AWGN channel from `-1` to `+1`,I chose to quantize the AWGN channel between `-1` and `+1` using uniform quantization. 
As the input code for viterbi decoder, I sample the quantized value from the LUT by having them as cumulative sum. I use random value to sample them and input to the decoder. Since I use probability for the transition metrics, I choose a maximum value when I compare the two state metrics instead of choosing a minimum value.


- - -
## Result & Conclusion
- - -

### Result of float version of viterbi algorithm
I got a result of BER of my float version implementation and I saw a tendency that the more SNR is, the better performance the decoder is. By obtainig the curve which is shown below, I can confirm that my implementation of the viterbi algorithm is working correctly.

![image](https://github.com/tinaba96/master_old/assets/57109730/1a6f75dc-81f6-46f5-ae17-868fe2cb9f7b)


### Result of quantized verision of viterbi algorithm
The below figure shows the results of quantized version of viterbi algorithm. I changed the number of quantied value from 2 level to 106 level and compared among them. As you see in this figure, the BER performance of the case which I quantized to 2 level is very bad compared to other cases. However, if I quantized to 4 level or more, there were no such a difference among them. Especially, when I quantized to 8 level, there is a similar BER performance to the one that I quantized to 106 level. Thus, I can conclude that it is possible to quantize to 8 level in order to make the viterbi decoder low-complexity without losing the BER performance.

![image](https://github.com/tinaba96/master_old/assets/57109730/92ff524e-6c04-443d-b776-a739ec84c6e7)


### Result of comparison between float version and quan- tized version
If I compare the implementation of float version and quantized version, there are not so much difference in BER performance. However, a case which I quantized to 2 level is the only the case which has lower BER performance than the float version, and the other cases that I quantized to 4 level or more have better performances than the float version. According to the below figure, I can see the nice curve as the SNR increase in both float version and quantized version.
The BER performance of the case which I quantize to 2 level, has the worst BER performance. This result shows that only 2 different values of input to the vitervi decoder is not enough for estimating the original code. However, the BER performance of the case which I quantized to 4 level, has better performance than the float version when the SNR is relatively high, even if there are only 4 different values of input to the viterbi decoder.

![image](https://github.com/tinaba96/master_old/assets/57109730/3e480db0-f1c6-4906-bb7e-c4e17e79fa50)


- - -
## Conclusion
- - -

I obtained the results that it is possible to quantize the Viterbi decoder without decreasing BER performance. In terms of hardware usage, my reseach has a big contribution. Especially, it is a great result that the BER performance that I quantized to 4 level or 8 level, which has much lower complexity than float, is almost as same as that of float version.





