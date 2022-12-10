function note=note4(x)  %4·ÖÒô·ûº¯Êý 
fs=44100;
dt=1/fs;
T4 = 0.5;
t4 = [0:dt:T4];

% mod4=(t4.^4).*exp(-30*(t4.^0.5));
% mod4=mod4*(1/max(mod4));
% note=(sin(x*2*pi*t4)+0.2*sin(2*x*2*pi*t4)+0.3*sin(3*x*2*pi*t4)).*mod4;
note=sin(x*2*pi*t4);
%figure;plot(t4,note)