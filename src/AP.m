function h=AP(delay,g,x)
% g = 0.5; 
% m = 8;
global audioFs;
m=round(audioFs*delay/1000);   %������ת��
num = zeros(1,m+1);     
num(1) = -g; 
num(m+1) = 1;    %% ϵͳ�����ķ��Ӳ���

den = zeros(1,m+1);
den(1) = 1;
den(m+1) = -g;      %% ϵͳ�����ķ�ĸ����
[H,w] = freqz (num, den,'whole');
% figure,plot(w/pi, abs(H));title('��Ƶ����');grid on; 

h = filter(num,den,x); 

% figure,stem([0:N-1],h),grid on;title('��λ������Ӧ')
