function note=note2(x)  %2·ÖÒô·ûº¯Êý 
fs=44100;
dt=1/fs;
T2 = 1;
t2 = [0:dt:T2];

% mod2=(t2.^4).*exp(-20*(t2.^0.5));
% mod2=mod2*(1/max(mod2));
% note=(sin(x*2*pi*t2)).*mod2;
note=sin(x*2*pi*t2);
%figure;plot(t2,note)