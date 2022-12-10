function notez=note2z(x)  %2分音符函数 
fs=44100;
dt=1/fs;
T2 = 1;

t2 = [0:dt:T2];
%mod2=(7.5*t2).*(stepfun(t2,0)-stepfun(t2,0.2))+(2.25-3.75*t2).*(stepfun(t2,0.2)-stepfun(t2,1/3))+(stepfun(t2,1/3)-stepfun(t2,2/3))+(3-3*t2).*(stepfun(t2,2/3)-stepfun(t2,1));

% t2 = [0:dt:T2/2];
% mod2=(2*7.5*t2).*(stepfun(t2,0)-stepfun(t2,0.2/2))+(2.25-2*3.75*t2).*(stepfun(t2,0.2/2)-stepfun(t2,1/6))+(stepfun(t2,1/6)-stepfun(t2,1/3))+(3-2*3*t2).*(stepfun(t2,1/3)-stepfun(t2,1/2));

mod2=sin(pi*t2/t2(end));%正弦包络
notez=(sin(x*2*pi*t2)).*mod2;
%notez=(sin(x*2*pi*t2)+0.2*sin(2*x*2*pi*t2)+0.3*sin(3*x*2*pi*t2)).*mod2;

%figure;plot(t2,notez)