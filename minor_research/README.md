# Master Research
# Optimized-FDanQ: Implementation of Hybrid Neural Network "DanQ" on Cloud Multi-FPGA and its Optimization under Given Costs

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
We implemented the viterbi algorithm, without using viterbi function from a toolbox form MATLAB. We first generate the input code for the convolutonal encoder randomly and put the AWGN after the encode. As we showed in Algorithm 1, we first define a state matrix in order to find a likelihood path for the decoding. Here, we applied transition metrics as euclidean distance between the input to the decoder with noise and possible value which is 0 or 1. As I mentioned above, we have 4 different states so that we have 4 ∗ (𝑛 + 3) as the size of state matrix, where n is the length of code. Every time the decoder reads the inputs, it stores a state metric in each state and also remember the best path for the tracing back by keeping a more likely path in the comparison between the two previous state. Since we used Euclidean distance as the transition metrics, we choose the minimum value when we compare the state metrics. The last 2 columns of state matrix are for determining the best path, as shown in Algorithm 2. After getting the best path, we finally compare the output of the decoder with the output of the convolutional encoder to see the Bit Error Rate.


https://github.com/tinaba96/master/blob/master/minor_research/final_viterbi_fromscrach_graph.m



### Implementation of quantized version

We implemented the quantized version of viterbi algorithm without using a function from the toolbox in MATLAB. The flow of the implementation is similar to the float version which I mentioned above. The biggest difference among them is the transition metrics. Here, we used probability as the transition metric instead of Euclidean distance. As shown in Algorithm 3, we used DMC as a conditional probability distribution and create a LUT for quantizing the channel output. We take a quantizer, which is introduced by Brian M. Kurkoski and Hideki Yagi [3], as consideration. However, we did not optimized the quantizer. Instead, since the paper showed a result that it is enough to quantize AWGN channel from -1 to +1, we chose to quantize the AWGN channel between -1 and +1 using uniform quantization. The paper [3] also indicated that the less noise is applied, the smaller range of AWGN should be considered. Thus, we think that the range between -1 and +1 is sufficient to do our research and there is no problem if we decrease the noise to see the result of Bit Error Rate performance.
As the input code for viterbi decoder, we sample the quantized value from the LUT by having them as cumulative sum. We use random value to sample them and input to the decoder. Since we use probability for the transition metrics, we choose a maximum value when we compare the two state metrics instead of choosing a minimum value, as shown in Algorithm 4. In terms of choosing a best path from the trace back and calculating the BER, as shown in Algorithm 5, the algorithm is as same as Algorithm 2. The Algorithm shown bellow is an example of quantized version which is quantize to 8 level.


https://github.com/tinaba96/master/blob/master/minor_research/quantized_viterbi_fromscrach.m

- - -
## Result & Conclusion
- - -
I obtained the results that it is possible to quantize the Viterbi decoder without decreasing BER performance. In terms of hardware usage, our reseach has a big contribution. Especially, it is a great result that the BER performance that I quantized to 4 level or 8 level, which has much lower complexity than float, is almost as same as that of float version.





