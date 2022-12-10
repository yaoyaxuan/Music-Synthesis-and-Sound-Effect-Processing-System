function notez=note8z(x)  %8·ÖÒô·ûº¯Êý 
fs=44100;
dt=1/fs;
T8 = 0.25;

t8 = [0:dt:T8];
%mod8=(7.5*4*t8).*(stepfun(t8,0)-stepfun(t8,0.05))+(2.25-3.75*4*t8).*(stepfun(t8,0.05)-stepfun(t8,1/12))+(stepfun(t8,1/12)-stepfun(t8,1/6))+(3-12*t8).*(stepfun(t8,1/6)-stepfun(t8,0.25));
% 
% t8 = [0:dt:T8/2];
% mod8=(2*7.5*4*t8).*(stepfun(t8,0)-stepfun(t8,0.05/2))+(2.25-2*3.75*4*t8).*(stepfun(t8,0.05/2)-stepfun(t8,1/24))+(stepfun(t8,1/24)-stepfun(t8,1/12))+(3-2*12*t8).*(stepfun(t8,1/12)-stepfun(t8,0.25/2));

mod8=sin(pi*t8/t8(end));
notez=(sin(x*2*pi*t8)).*mod8;
%notez=(sin(x*2*pi*t8)+0.2*sin(2*x*2*pi*t8)+0.3*sin(3*x*2*pi*t8)).*mod8;
%figure;plot(t8,notez)