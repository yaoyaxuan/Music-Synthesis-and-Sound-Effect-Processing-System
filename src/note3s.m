function note=note3s(x)  %2·ÖÒô·ûº¯Êý 
fs=44100;
dt=1/fs;
T2 = 2.5;
t2 = [0:dt:T2];

% mod2=(t2.^4).*exp(-12*(t2.^0.5));
% mod2=mod2*(1/max(mod2));
mod2=sin(pi*t2/t2(end));
note=(sin(x*2*pi*t2)).*mod2;
%note=(sin(x*2*pi*t2)+0.2*sin(2*x*2*pi*t2)+0.3*sin(3*x*2*pi*t2)).*mod2;