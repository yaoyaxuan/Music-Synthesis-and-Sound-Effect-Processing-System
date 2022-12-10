function sound_timer1(signal,player,half_space)
% 计算片段左右侧索引
left = player.CurrentSample - half_space;
right = player.CurrentSample + half_space;
left = max(1,left);
right = min(right,length(signal));
fragment = signal(left:right);
t = ([left:right]-1)/player.SampleRate;
if left<=1
    fragment = [zeros(1,right-left+1),fragment];
    t = [(2*left-right-1:left-1)/player.SampleRate,t];
end
if right>=length(signal)
    fragment = [fragment,zeros(1,right-left+1)];
    t = [t,(right+1:2*right-left+1)/player.SampleRate];
end

% subplot(2,1,1)
% plot(([1:length(signal)]-1)/player.SampleRate,signal,'k-')
% hold on,plot(t,fragment,'r-')

% %set(gca,'xlim',([1 length(signal)]+[-1 1]*half_space)/player.SampleRate,'ylim',[min(signal) max(signal)]);
% xlabel('时间/s')
% ylabel('幅值')
subplot(1,2,1)
plot(t,fragment,'-')
%set(gca,'xlim',[t(1),t(end)],'ylim',[min(signal) max(signal)]);
xlabel('时间/s')
ylabel('幅值')
end