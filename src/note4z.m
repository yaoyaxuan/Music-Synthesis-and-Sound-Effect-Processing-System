function notez=note4z(x)  %4分音符函数 
fs=44100;
dt=1/fs;
T4 = 0.5;

t4 = [0:dt:T4];
%折线
%mod4=(2*7.5*t4).*(stepfun(t4,0)-stepfun(t4,0.1))+(2.25-3.75*2*t4).*(stepfun(t4,0.1)-stepfun(t4,1/6))+(stepfun(t4,1/6)-stepfun(t4,1/3))+(3-6*t4).*(stepfun(t4,1/3)-stepfun(t4,0.5));

%快速折线
% t4 = [0:dt:T4/2];
% mod4=(2*2*7.5*t4).*(stepfun(t4,0)-stepfun(t4,0.1/2))+(2.25-2*3.75*2*t4).*(stepfun(t4,0.1/2)-stepfun(t4,1/12))+(stepfun(t4,1/12)-stepfun(t4,1/6))+(3-2*6*t4).*(stepfun(t4,1/6)-stepfun(t4,0.5/2));

%正弦
mod4=sin(pi*t4/t4(end));
notez=(sin(x*2*pi*t4)).*mod4;
%notez=(sin(x*2*pi*t4)+0.2*sin(2*x*2*pi*t4)+0.3*sin(3*x*2*pi*t4)).*mod4;
%figure;plot(t4,notez)


