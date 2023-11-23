%1)
%load("C:\Users\gui28\OneDrive\Ambiente de Trabalho\LEI\2ºAno\1º Semestre\SM\P6\Guitar03.mat");
[x, fa] = audioread('vozportugues.wav');
t = (0:length(x)-1)*1/fa;
figure(1);
%plot(t, x);
spectrogram(x, 1024, 512, 1024, fa, 'yaxis'); colorbar
figure(2);
Espetro(x, 1/fa);

%2)
teta=2*pi*(5000/fa);
xr=x+ 0.6*cos(teta*(0:length(x)-1)'+0.1*pi);
figure(3);
spectrogram(xr, 1024, 512, 1024, fa, 'yaxis'); colorbar
figure(4);
Espetro(xr, 1/fa);

%3)
%a)
R=0.9;
num=[1 -2*cos(teta) 1];
den=[1 -2*R*cos(teta) R^2];
figure(5);
[H, f] = respfreq(num, den, fa);

%b)
y = filter(num, den, xr);
Espetro(y, 1/fa);
figure(6);
spectrogram(y, 1024, 512, 1024, fa, 'yaxis'); colorbar


%4)
%b)
D = 2500;
a = 0.9;
num=[1 zeros(1,D-1) a];
den=1;      
y = filter(num, den, x);
soundsc(y, fa);

%c)
num = 1;
den=[1 zeros(1,D-1) -a];
y = filter(num, den, x);
soundsc(y, fa);








