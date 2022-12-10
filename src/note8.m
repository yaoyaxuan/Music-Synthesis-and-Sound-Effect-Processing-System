function note=note8(x)  %8·ÖÒô·ûº¯Êý 
fs=44100;
dt=1/fs;
T8 = 0.25;
t8 = [0:dt:T8];

% mod8=(t8.^4).*exp(-50*(t8.^0.5));
% mod8=mod8*(1/max(mod8));
% note=(sin(x*2*pi*t8)+0.2*sin(2*x*2*pi*t8)+0.3*sin(3*x*2*pi*t8)).*mod8;
note=sin(x*2*pi*t8);
%figure;plot(t8,note)