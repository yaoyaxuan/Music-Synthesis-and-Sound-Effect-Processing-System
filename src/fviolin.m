function fviolin()
%小提琴音色，正弦包络，小提琴谐波
fs=44100;
o=note8z(0);
%% 十六分音符

%%
B4=491.5;
A4=441.2;
G4=392;
F4=350.3;
E4=327.7;
D4=293.8;
C4=258.7;

B3=247.4;
A3=220.1;

D5=587.1;
C5=523.5;

K=[
    0.7372	0.2981	0.1096	0.2576	0.2299; 
    0.8745	0.6307	0.4302	0.3199	0.1536;
    0.9341	0.4059	0.9206	0.4728	0.7143;
    0.7433	0.3926	0.9077	0.1613	0.1911;
    1	0.3708	0.2573	0.6166	0.2861;
    1	0.5591	0.2514	0.273	0.1796;
    0.3314	1	0.2396	0.1632	0.1472;
    0.1471	0.8927	0.5109	0.1282	0.1302;
    0.1193	0.9087	0.3804	0.284	0.09072;
    0.5198	0.9709	0.3453	0.8723	0.1566;
    1	0.6244	0.06455	0.1285	0.04529;
];
%% 二分音符
B4_2=[
     note2z(B4);
     note2z(2*B4);
     note2z(3*B4);
     note2z(4*B4);
     note2z(5*B4);
     ];
A4_2=[
     note2z(A4);
     note2z(2*A4);
     note2z(3*A4);
     note2z(4*A4);
     note2z(5*A4);
     ];
G4_2=[
     note2z(G4);
     note2z(2*G4);
     note2z(3*G4);
     note2z(4*G4);
     note2z(5*G4);
     ];
F4_2=[
     note2z(F4);
     note2z(2*F4);
     note2z(3*F4);
     note2z(4*F4);
     note2z(5*F4);
     ];
E4_2=[
     note2z(E4);
     note2z(2*E4);
     note2z(3*E4);
     note2z(4*E4);
     note2z(5*E4);
     ];
D4_2=[
     note2z(D4);
     note2z(2*D4);
     note2z(3*D4);
     note2z(4*D4);
     note2z(5*D4);
     ];
C4_2=[
     note2z(C4);
     note2z(2*C4);
     note2z(3*C4);
     note2z(4*C4);
     note2z(5*C4);
     ];
B3_2=[
     note2z(B3);
     note2z(2*B3);
     note2z(3*B3);
     note2z(4*B3);
     note2z(5*B3);
     ];
A3_2=[
     note2z(A3);
     note2z(2*A3);
     note2z(3*A3);
     note2z(4*A3);
     note2z(5*A3);
     ];
%
si2=K(1,:)*B4_2;
la2=K(2,:)*A4_2;
so2=K(3,:)*G4_2;
fa2=K(4,:)*F4_2;
mi2=K(5,:)*E4_2;
re2=K(6,:)*D4_2;
do2=K(7,:)*C4_2;
si2l=K(8,:)*B3_2;
la2l=K(9,:)*A3_2;

%% 四分音符
B4_4=[
     note4z(B4);
     note4z(2*B4);
     note4z(3*B4);
     note4z(4*B4);
     note4z(5*B4);
     ];
A4_4=[
     note4z(A4);
     note4z(2*A4);
     note4z(3*A4);
     note4z(4*A4);
     note4z(5*A4);
     ];
G4_4=[
     note4z(G4);
     note4z(2*G4);
     note4z(3*G4);
     note4z(4*G4);
     note4z(5*G4);
     ];
F4_4=[
     note4z(F4);
     note4z(2*F4);
     note4z(3*F4);
     note4z(4*F4);
     note4z(5*F4);
     ];
E4_4=[
     note4z(E4);
     note4z(2*E4);
     note4z(3*E4);
     note4z(4*E4);
     note4z(5*E4);
     ];
D4_4=[
     note4z(D4);
     note4z(2*D4);
     note4z(3*D4);
     note4z(4*D4);
     note4z(5*D4);
     ];
C4_4=[
     note4z(C4);
     note4z(2*C4);
     note4z(3*C4);
     note4z(4*C4);
     note4z(5*C4);
     ];
B3_4=[
     note4z(B3);
     note4z(2*B3);
     note4z(3*B3);
     note4z(4*B3);
     note4z(5*B3);
     ];
A3_4=[
     note4z(A3);
     note4z(2*A3);
     note4z(3*A3);
     note4z(4*A3);
     note4z(5*A3);
     ];
C5_4=[
     note4z(C5);
     note4z(2*C5);
     note4z(3*C5);
     note4z(4*C5);
     note4z(5*C5);
     ];
%
si4=K(1,:)*B4_4;
la4=K(2,:)*A4_4;
so4=K(3,:)*G4_4;
fa4=K(4,:)*F4_4;
mi4=K(5,:)*E4_4;
re4=K(6,:)*D4_4;
do4=K(7,:)*C4_4;
si4l=K(8,:)*B3_4;
la4l=K(9,:)*A3_4;
do4h=K(10,:)*C5_4;
%% 八分音符
B4_8=[
     note8z(B4);
     note8z(2*B4);
     note8z(3*B4);
     note8z(4*B4);
     note8z(5*B4);
     ];
A4_8=[
     note8z(A4);
     note8z(2*A4);
     note8z(3*A4);
     note8z(4*A4);
     note8z(5*A4);
     ];
G4_8=[
     note8z(G4);
     note8z(2*G4);
     note8z(3*G4);
     note8z(4*G4);
     note8z(5*G4);
     ];
F4_8=[
     note8z(F4);
     note8z(2*F4);
     note8z(3*F4);
     note8z(4*F4);
     note8z(5*F4);
     ];
E4_8=[
     note8z(E4);
     note8z(2*E4);
     note8z(3*E4);
     note8z(4*E4);
     note8z(5*E4);
     ];
D4_8=[
     note8z(D4);
     note8z(2*D4);
     note8z(3*D4);
     note8z(4*D4);
     note8z(5*D4);
     ];
C4_8=[
     note8z(C4);
     note8z(2*C4);
     note8z(3*C4);
     note8z(4*C4);
     note8z(5*C4);
     ];
B3_8=[
     note8z(B3);
     note8z(2*B3);
     note8z(3*B3);
     note8z(4*B3);
     note8z(5*B3);
     ];
A3_8=[
     note8z(A3);
     note8z(2*A3);
     note8z(3*A3);
     note8z(4*A3);
     note8z(5*A3);
     ];
C5_8=[
     note8z(C5);
     note8z(2*C5);
     note8z(3*C5);
     note8z(4*C5);
     note8z(5*C5);
     ];
%
si8=K(1,:)*B4_8;
la8=K(2,:)*A4_8;
so8=K(3,:)*G4_8;
fa8=K(4,:)*F4_8;
mi8=K(5,:)*E4_8;
re8=K(6,:)*D4_8;
do8=K(7,:)*C4_8;
si8l=K(8,:)*B3_8;
la8l=K(9,:)*A3_8;
do8h=K(10,:)*C5_8;
%%
E4_42=[
     note3s(E4);
     note3s(2*E4);
     note3s(3*E4);
     note3s(4*E4);
     note3s(5*E4);
     ];
mi=K(5,:)*E4_42;

B4_42=[
     note3s(B4);
     note3s(2*B4);
     note3s(3*B4);
     note3s(4*B4);
     note3s(5*B4);
     ];
si=K(8,:)*B4_42;


D4_42=[
     note42z(D4);
     note42z(2*D4);
     note42z(3*D4);
     note42z(4*D4);
     note42z(5*D4);
     ];
re42=K(6,:)*D4_42;%四半 


B3_42=[
     note42z(B3);
     note42z(2*B3);
     note42z(3*B3);
     note42z(4*B3);
     note42z(5*B3);
     ];
si42l=K(8,:)*B3_42;%四半 


A4_42=[
     note42z(A4);
     note42z(2*A4);
     note42z(3*A4);
     note42z(4*A4);
     note42z(5*A4);
     ];
la42=K(2,:)*A4_42;%四半

%% 
part=[ do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2  ];        
%part=[do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2                                do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2];
sound_play1(part,fs,0.01); %播放
T=length(part);
t=0:T-1;
plot(part); %画图
%audioplay(part,fs);
%audiowrite('violin.wav',part,fs);

