function [ Y ] = fx_FIRH( wc1 , signal)

%===============FIR����˲���===============  
global audioFs;
b = fir1(100, wc1*2/audioFs,'high');
Y = filter(b,1,signal);         