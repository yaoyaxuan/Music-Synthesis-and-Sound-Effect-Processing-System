function [ Y ] = fx_FIR( wc1 ,wc2 , signal)

%===============FIRÉè¼ÆÂË²¨Æ÷===============  
%Wn=[wc1*2/fs wc2*2/fs];
global audioFs;
b = fir1(100, [wc1*2/audioFs,wc2*2/audioFs]);
Y = filter(b,1,signal);            


