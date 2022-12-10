
function S=Schroeder(delay,g)
global audio;
global audioFs;
fs=audioFs;
%[x,fs] = audioread('jinchi.wav');  %% 读取音频文件
%sound(x, fs);                         %% 播放音频文件
% Tr = 1;                              %% 混响时间，单位秒
% delay = 40;                           %% 延时参数，单位毫秒
D = round(fs*delay/1000);              %% 计算延时点数
% g = 10^(-3*D/fs/Tr);                   %% 利用公式3-6计算衰减系数
num = 1;
den = zeros(1,1+D);
den(1) = 1;den(1+D) = -g; 
y = filter(num,den,audio);             %% 梳状滤波器对语音滤波
%pause;                             %% 暂停（按任意键继续）
%sound(y,fs);                         %% 播放混响后的音频
S=y;

% 
% [x,fs] = audioread('01.wav');
% o=note2z(0);
% part=[ x];
% sound(part, fs);  %播放