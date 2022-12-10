function fruguo0()
fs=44100;
t=0:1/fs:2.5;

%% ³¤Òô
mi=note2(329.63);
si=note2(493.88);
re42=note4(293.66);%ËÄ°ë
si42l=note4(246.94);%ËÄ°ë
la42=note4(440);%ËÄ°ë
%% ¶þ·ÖÒô·û
do2=note2(261.63);
re2=note2(293.66);
mi2=note2(329.63);
fa2=note2(349.23);
so2=note2(392);
la2=note2(440);
si2=note2(493.88);
%Éý°Ë
do2h=note2(523.25);
re2h=note2(587.33);
mi2h=note2(659.25);

%½µ
si2l=note2(246.94);
la2l=note2(220);
so2l=note2(196);

%% ËÄ·ÖÒô·û
do4=note4(261.63);
re4=note4(293.66);
mi4=note4(329.63);
fa4=note4(349.23);
so4=note4(392);
la4=note4(440);
si4=note4(493.88);

do4h=note4(523.25);
re4h=note4(587.33);
mi4h=note4(659.25);
% fa2h=note2(349.23);
% so2h=note2(392);
la4h=note2(880);
% si2h=note2(493.88);

si4l=note4(246.94);
la4l=note4(220);
so4l=note4(196);

%% °Ë·ÖÒô·û
do8=note8(261.63);
re8=note8(293.66);
mi8=note8(329.63);
fa8=note8(349.23);
so8=note8(392);
la8=note8(440);
si8=note8(493.88);

do8h=note8(523.25);
re8h=note8(587.33);
mi8h=note8(659.25);
% fa2h=note2(349.23);
% so2h=note2(392);
% la2h=note2(440);
% si2h=note2(493.88);
si8l=note8(246.94);
la8l=note8(220);
so8l=note8(196);
o=note8(0);

%% Ê®Áù·ÖÒô·û

%%
part=[ do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2  ];        
%part=[do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2                                do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2];
% sound(part, fs);  %²¥·Å
% T=length(part);
% t=0:T-1;
%plot(t,part);  %»­Í¼
sound_play1(part,fs,0.01); %²¥·Å
plot(part);  %»­Í¼
audiowrite('ruguo.wav',part,fs);