
function S=Schroeder(delay,g)
global audio;
global audioFs;
fs=audioFs;
%[x,fs] = audioread('jinchi.wav');  %% ��ȡ��Ƶ�ļ�
%sound(x, fs);                         %% ������Ƶ�ļ�
% Tr = 1;                              %% ����ʱ�䣬��λ��
% delay = 40;                           %% ��ʱ��������λ����
D = round(fs*delay/1000);              %% ������ʱ����
% g = 10^(-3*D/fs/Tr);                   %% ���ù�ʽ3-6����˥��ϵ��
num = 1;
den = zeros(1,1+D);
den(1) = 1;den(1+D) = -g; 
y = filter(num,den,audio);             %% ��״�˲����������˲�
%pause;                             %% ��ͣ���������������
%sound(y,fs);                         %% ���Ż�������Ƶ
S=y;

% 
% [x,fs] = audioread('01.wav');
% o=note2z(0);
% part=[ x];
% sound(part, fs);  %����