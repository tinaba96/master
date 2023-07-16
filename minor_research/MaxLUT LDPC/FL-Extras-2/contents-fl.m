%Toolbox QuantDMC - A Matlab library for quantization of discrete memorless channels
%Version FL 21-June-2012
%
% Finite-Length LDPC Decoding using LUTs
%   QdeGenerateLut    - Generate LUTs for finite length simulation (this funciton
%                       is similar to QdeConvergence)
%   LdpcLutSimulation - Performs a finite-length LDPC code simulation. A specific
%                       LDPC code is required (two codes are included).
%   ExLdpcLut         - Example using QdeGenerateLut and LdpcLutSimulation
%
%
% QuantDMC is (c) 2010-2012 Brian Kurkoski
% Distributed under an MIT-like license; see the file LICENSE
%
%
%VERSION HISTORY
%
%Version 1 21-June-2012
%
%    * Initial release.  Not publicly released.
%
%
%Version 2 23-July-2012
%
%    * Added KRONPRELABEL to QDEGENERATELUT.  LLRs are pre-sorted to 
%      correspond to increasing integers -- this makes the resulting LUTs 
%      easier to read.   More robust checking for '.MAT' in filename
%      string.
%