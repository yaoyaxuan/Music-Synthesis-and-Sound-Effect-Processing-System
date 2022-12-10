% 播放器
function sound_play(signal,fs,fragment)
warning off
if nargin<4
    fragment = length(signal)/fs/50;
end
player = audioplayer(signal,fs);
half_space = round(fragment*fs/2);

% figure,set(gcf,'position',[680   673   683   305]);
% subplot(2,1,1)
% plot(([1:length(signal)]-1)/fs,signal,'k-')
% %set(gca,'xlim',([1 length(signal)]+[-1 1]*half_space)/fs,'ylim',[min(signal) max(signal)]);
% xlabel('时间/s')
% ylabel('幅值')

subplot(1,2,2)
%set(gca,'xlim',([1 length(signal)]+[-1 1]*half_space)/fs,'ylim',[min(signal) max(signal)]);
xlabel('时间/s')
ylabel('幅值')
pause(fragment);
play(player);
my_timer = timer('BusyMode','drop','ExecutionMode', 'fixedSpacing', 'Period', fragment);
my_timer.StartDelay = 0;
my_timer.TimerFcn = @(~,~) sound_timer(signal,player,half_space);
start(my_timer)
pause(length(signal)/fs+2)
delete(my_timer)
end