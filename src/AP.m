function h=AP(delay,g,x)
% g = 0.5; 
% m = 8;
global audioFs;
m=round(audioFs*delay/1000);   %采样率转化
num = zeros(1,m+1);     
num(1) = -g; 
num(m+1) = 1;    %% 系统函数的分子部分

den = zeros(1,m+1);
den(1) = 1;
den(m+1) = -g;      %% 系统函数的分母部分
[H,w] = freqz (num, den,'whole');
% figure,plot(w/pi, abs(H));title('幅频特性');grid on; 

h = filter(num,den,x); 

% figure,stem([0:N-1],h),grid on;title('单位脉冲响应')
