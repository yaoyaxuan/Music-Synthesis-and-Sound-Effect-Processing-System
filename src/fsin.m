function fsin()
%%不加谐波，加正弦包络
fs=44100;

%% 长音
mi=note3s(329.63);
si=note3s(493.88);
re42=note42z(293.66);%四半
si42l=note42z(246.94);%四半
la42=note42z(440);%四半
%% 二分音符
do2=note2z(261.63);
re2=note2z(293.66);
mi2=note2z(329.63);
fa2=note2z(349.23);
so2=note2z(392);
la2=note2z(440);
si2=note2z(493.88);
%升八
do2h=note2z(523.25);
re2h=note2z(587.33);
mi2h=note2z(659.25);

%降
si2l=note2z(246.94);
la2l=note2z(220);
so2l=note2z(196);

%% 四分音符
do4=note4z(261.63);
re4=note4z(293.66);
mi4=note4z(329.63);
fa4=note4z(349.23);
so4=note4z(392);
la4=note4z(440);
si4=note4z(493.88);

do4h=note4z(523.25);
re4h=note4z(587.33);
mi4h=note4z(659.25);
% fa2h=note2(349.23);
% so2h=note2(392);
la4h=note2(880);
% si2h=note2(493.88);

si4l=note4z(246.94);
la4l=note4z(220);
so4l=note4z(196);

%% 八分音符
do8=note8z(261.63);
re8=note8z(293.66);
mi8=note8z(329.63);
fa8=note8z(349.23);
so8=note8z(392);
la8=note8z(440);
si8=note8z(493.88);

do8h=note8z(523.25);
re8h=note8z(587.33);
mi8h=note8z(659.25);
% fa2h=note2(349.23);
% so2h=note2(392);
% la2h=note2(440);
% si2h=note2(493.88);
si8l=note8z(246.94);
la8l=note8z(220);
so8l=note8z(196);
o=note8z(0);

%% 十六分音符

%%
part=[ do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2  ];        
%part=[do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2                                do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2];
%sound(part, fs);  %播放
sound_play1(part,fs,0.01); %播放
T=length(part);
t=0:T-1;
plot(part);  %画图
%audioplay(part,fs);
audiowrite('ruguo.wav',part,fs);