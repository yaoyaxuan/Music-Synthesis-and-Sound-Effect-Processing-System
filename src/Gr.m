function Gr()
%% H1
global audio;
global audioFs;
%[x,fs] = audioread('jinchi.wav');  %% 读取音频文件
d2=22;
g2=0.4;
D2=round(44100*d2/1000);   %采样率转化
num2 = zeros(1,D2+1);     
num2(1) = -g2; 
num2(D2+1) = 1;    %% 系统函数的分子部分

den2 = zeros(1,D2+1);
den2(1) = 1;
den2(D2+1) = -g2;      %% 系统函数的分母部分

%
d3=8.3;
g3=0.6;
D3=round(audioFs*d3/1000);   %采样率转化
num3 = zeros(1,D3+1);     
num3(1) = -g3; 
num3(D3+1) = 1;    %% 系统函数的分子部分

den3 = zeros(1,D3+1);
den3(1) = 1;
den3(D3+1) = -g3;      %% 系统函数的分母部分

%
d4=4.7;
D4=round(audioFs*d4/1000);   %采样率转化
num4 = zeros(1,D4+1);     
num4(1) = 0; 
num4(D4+1) = 1;    %% 系统函数的分子部分

den4 = zeros(1,D4+1);
den4(1) = 1;
den4(D4+1) = 0;      %% 系统函数的分母部分

numtg=conv(num2,num3);
numg=conv(numtg,num4);
dentg=conv(den2,den3);
deng=conv(dentg,den4);
%[G,w] = freqz (num, den,'whole');

d1=24;
D1=round(audioFs*d1/1000);   %采样率转化
%-----------------------------------
b1=[zeros(1,D1),-0.3*deng+numg];
a1=[deng-0.3*numg,zeros(1,D1)];
%----------------------------------
%

num1 = zeros(1,D1+1);     
num1(1) = 0; 
num1(D1+1) = 1;    %% 系统函数的分子部分

den1 = zeros(1,D1+1);
den1(1) = 1;
den1(D1+1) = 0;      %% 系统函数的分母部分
[H11,w] = freqz (num1, den1,'whole');


% H12=(-0.3+G)/(1-0.3*G);
% H1=H12*H11;

%% H2
d6=36;
D6=round(audioFs*d6/1000);   %采样率转化
num6 = zeros(1,D6+1);     
num6(1) = 0; 
num6(D6+1) = 1;    %% 系统函数的分子部分

den6 = zeros(1,D6+1);
den6(1) = 1;
den6(D6+1) = 0;      %% 系统函数的分母部分

%
d5=30;
g5=0.4;
D5=round(audioFs*d5/1000);   %采样率转化
num5 = zeros(1,D5+1);     
num5(1) = -g5; 
num5(D5+1) = 1;    %% 系统函数的分子部分

den5 = zeros(1,D5+1);
den5(1) = 1;
den5(D5+1) = -g5;      %% 系统函数的分母部分

num56=conv(num5,num6);
den56=conv(den5,den6);
%-----------------------------------
b2=(-0.1*den56+num56);
a2=den56-0.1*num56;
%----------------------------------

% [G2,w] = freqz (num56, den56,'whole');
% H2=(-0.1+G2)/(1-0.1*G2);
%% 
[b33,a3]=butter(1,4200/(audioFs/2));
gain=0.32;
b3=gain*b33;
x1=conv(b1,a2);
x2=conv(x1,a3);
x3=conv(b2,a1);
x4=conv(x3,a3);
B=(x4+x2);

x5=conv(a1,a2);
x6=conv(x5,a3);
x7=conv(b1,b2);
x8=conv(x7,b3);
A=2*(x6-x8);

% B=b1.*a2.*a3+b2.*a1.*a3;
% A=2*(a1.*a2.*a3-b1.*b2.*b3);

% [H33,w]= freqz ( b, a,'whole');
% H3=H33*gain;
% H=(0.5*H1.*(1+H2))/(1-H1.*H2.*H3);

h = filter(B,A,audio); 
audiowrite('violinGr.wav',h,audioFs);
% sound(x,fs);
sound(h/max(h),audioFs);

