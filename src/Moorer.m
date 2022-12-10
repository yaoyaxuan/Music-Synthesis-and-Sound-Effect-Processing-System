function Moorer(CD,Cg,da,ga,dk,k)
global audio;
global audioFs;
fs=audioFs;
%[input fs] = audioread('jinchi.wav');
X=audio(:,1);

M=[0.0000,0.0043,0.0215,0.0225,...
   0.0268,0.0270,0.0298,0.0458,...
   0.0485,0.0572,0.0587,0.0595,...
   0.0612,0.0707,0.0708,0.0726,...
   0.0741,0.0753,0.0797];
A=[1.000,0.841,0.504,0.491,...
   0.379,0.380,0.346,0.289,...
   0.272,0.192,0.193,0.217,...
   0.181,0.180,0.181,0.176,...
   0.142,0.167,0.134];
MD=round(M*fs);
%% 6梳状
%CD=[50 57 61 69 73 79];
CD=round(CD*fs/1000);

%Cg=[0.077,0.090,0.095,0.100,0.105,0.110];
Ca=[0.698,0.688,0.684,0.680,0.677,0.673];

%% FIR延迟滤波器生成早期反射

for i=1:length(X)-max(MD)-1
    tempX=X(i+MD)';
	Xout(i)= tempX*A';
end

Lms=80*fs/1000;
Xout=[zeros(1,Lms),Xout];
yC1=zeros(length(Xout)+Lms,6);
yC1s=zeros(length(Xout)+Lms,6);
for i=1:length(Xout)
    for j=1:6
        yC1(i,j)=yC1s(i-CD(j)+Lms,j)*Ca(j)+Xout(i);
        yC1s(i+Lms,j)=yC1(i,j)+yC1s(i-1+Lms,j)*Cg(j);
    end
end
xA=sum(yC1,2);

%% 全通器
%m=6*48000/1000;
m=da*48000/1000;
%ga=0.7;
xA=[zeros(1,m) xA'];
yA=zeros(size(xA));
for i=m+1:length(xA)
   yA(i)=-ga*xA(i)+xA(i-m)+ga*yA(i-m); 
end

%% 延时器
%dk=23.7
d=round(dk*48000/1000);
%k=0.756;
yk=k*[zeros(1,d),yA];
L=min([length(yk),length(Xout)]);
y=yk(1:L)+Xout(1:L);

%sound(X,fs,24);
sound(y,fs,24);
