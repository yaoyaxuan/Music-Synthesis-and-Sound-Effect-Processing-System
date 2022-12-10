function fruguoPiano()
fs=44100;
%¸ÖÇÙÐ³²¨£¿
B4=493.88;
A4=440;
G4=392;
F4=349.23;
E4=329.63;
D4=293.66;
C4=261.63;

B3=246.94;
A3=220;

D5=587.33;
C5=523.25;
K=[
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    1 0.2 0.3 0 0;
    ];
%% ¶þ·ÖÒô·û
B4_2=[
     note2(B4);
     note2(2*B4);
     note2(3*B4);
     note2(4*B4);
     note2(5*B4);
     ];
A4_2=[
     note2(A4);
     note2(2*A4);
     note2(3*A4);
     note2(4*A4);
     note2(5*A4);
     ];
G4_2=[
     note2(G4);
     note2(2*G4);
     note2(3*G4);
     note2(4*G4);
     note2(5*G4);
     ];
F4_2=[
     note2(F4);
     note2(2*F4);
     note2(3*F4);
     note2(4*F4);
     note2(5*F4);
     ];
E4_2=[
     note2(E4);
     note2(2*E4);
     note2(3*E4);
     note2(4*E4);
     note2(5*E4);
     ];
D4_2=[
     note2(D4);
     note2(2*D4);
     note2(3*D4);
     note2(4*D4);
     note2(5*D4);
     ];
C4_2=[
     note2(C4);
     note2(2*C4);
     note2(3*C4);
     note2(4*C4);
     note2(5*C4);
     ];
B3_2=[
     note2(B3);
     note2(2*B3);
     note2(3*B3);
     note2(4*B3);
     note2(5*B3);
     ];
A3_2=[
     note2(A3);
     note2(2*A3);
     note2(3*A3);
     note2(4*A3);
     note2(5*A3);
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

%% ËÄ·ÖÒô·û
B4_4=[
     note4(B4);
     note4(2*B4);
     note4(3*B4);
     note4(4*B4);
     note4(5*B4);
     ];
A4_4=[
     note4(A4);
     note4(2*A4);
     note4(3*A4);
     note4(4*A4);
     note4(5*A4);
     ];
G4_4=[
     note4(G4);
     note4(2*G4);
     note4(3*G4);
     note4(4*G4);
     note4(5*G4);
     ];
F4_4=[
     note4(F4);
     note4(2*F4);
     note4(3*F4);
     note4(4*F4);
     note4(5*F4);
     ];
E4_4=[
     note4(E4);
     note4(2*E4);
     note4(3*E4);
     note4(4*E4);
     note4(5*E4);
     ];
D4_4=[
     note4(D4);
     note4(2*D4);
     note4(3*D4);
     note4(4*D4);
     note4(5*D4);
     ];
C4_4=[
     note4(C4);
     note4(2*C4);
     note4(3*C4);
     note4(4*C4);
     note4(5*C4);
     ];
B3_4=[
     note4(B3);
     note4(2*B3);
     note4(3*B3);
     note4(4*B3);
     note4(5*B3);
     ];
A3_4=[
     note4(A3);
     note4(2*A3);
     note4(3*A3);
     note4(4*A3);
     note4(5*A3);
     ];
C5_4=[
     note4(C5);
     note4(2*C5);
     note4(3*C5);
     note4(4*C5);
     note4(5*C5);
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
%% °Ë·ÖÒô·û
B4_8=[
     note8(B4);
     note8(2*B4);
     note8(3*B4);
     note8(4*B4);
     note8(5*B4);
     ];
A4_8=[
     note8(A4);
     note8(2*A4);
     note8(3*A4);
     note8(4*A4);
     note8(5*A4);
     ];
G4_8=[
     note8(G4);
     note8(2*G4);
     note8(3*G4);
     note8(4*G4);
     note8(5*G4);
     ];
F4_8=[
     note8(F4);
     note8(2*F4);
     note8(3*F4);
     note8(4*F4);
     note8(5*F4);
     ];
E4_8=[
     note8(E4);
     note8(2*E4);
     note8(3*E4);
     note8(4*E4);
     note8(5*E4);
     ];
D4_8=[
     note8(D4);
     note8(2*D4);
     note8(3*D4);
     note8(4*D4);
     note8(5*D4);
     ];
C4_8=[
     note8(C4);
     note8(2*C4);
     note8(3*C4);
     note8(4*C4);
     note8(5*C4);
     ];
B3_8=[
     note8(B3);
     note8(2*B3);
     note8(3*B3);
     note8(4*B3);
     note8(5*B3);
     ];
A3_8=[
     note8(A3);
     note8(2*A3);
     note8(3*A3);
     note8(4*A3);
     note8(5*A3);
     ];
C5_8=[
     note8(C5);
     note8(2*C5);
     note8(3*C5);
     note8(4*C5);
     note8(5*C5);
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
     note2(E4);
     note2(2*E4);
     note2(3*E4);
     note2(4*E4);
     note2(5*E4);
     ];
mi=K(5,:)*E4_42;

B4_42=[
     note2(B4);
     note2(2*B4);
     note2(3*B4);
     note2(4*B4);
     note2(5*B4);
     ];
si=K(8,:)*B4_42;


D4_42=[
     note4(D4);
     note4(2*D4);
     note4(3*D4);
     note4(4*D4);
     note4(5*D4);
     ];
re42=K(6,:)*D4_42;%ËÄ°ë 


B3_42=[
     note4(B3);
     note4(2*B3);
     note4(3*B3);
     note4(4*B3);
     note4(5*B3);
     ];
si42l=K(8,:)*B3_42;%ËÄ°ë 


A4_42=[
     note4(A4);
     note4(2*A4);
     note4(3*A4);
     note4(4*A4);
     note4(5*A4);
     ];
la42=K(2,:)*A4_42;%ËÄ°ë%% Ê®Áù·ÖÒô·û
o=note8(0);
%%

part=[ do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2  ];        
%part=[do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2                                do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi   do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi4 do8 si8l la4l re4 do8 si42l    do4 la4l mi4 do4 re4 la4 so4 fa4 mi8 re8 mi           mi8 mi8 do4h la42 so8 la8 do8h si8 la4 so8 so2 la4 do8 re4 do8 re8 mi8 mi2 o do8 re8 mi8      fa4 mi8 re8 re2  la4 so8 fa8 so8 la4 si8 si    do8 si8l la4l mi2 do8 la8l si4l fa4 mi8 re42 do8 re8 do8 re8 mi8 mi8 fa8 so8 la4 do4h  si8 so4 la2];
% sound(part, fs);  %²¥·Å
% T=length(part);
% t=0:T-1;
sound_play1(part,fs,0.01); %²¥·Å
plot(part);  %»­Í¼

audiowrite('ruguopiano.wav',part,fs);
