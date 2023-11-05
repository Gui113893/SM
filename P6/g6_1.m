load('Guitar03.mat');
t = (0:length(x)-1)*1/fa;
figure(1)
[X ,f] = Espetro(x, 1/fa);
figure(2)
spectrogram(x, 1024, 512, 1024, fa, "yaxis");
figure(3);
plot(t, x);

H = zeros(530000, 1);
H((f > -1200)&(f < -600)) = 1;
H((f > 600)&(f < 1200)) = 1;
X1 = X.*H;
plot(f, abs(X1));

[x1, t1] = Reconstroi(X1, f); 
figure(4);
plot(t1, x1);
figure(5);
spectrogram(x1, 1024, 512, 1024, fa, "yaxis");

