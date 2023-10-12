fo = 1;
k = 10;
Fa = 1000;
Ta = 1/Fa;
To = 1;
a = zeros(1, k+1);
b = zeros(1, k+1);
aux = 1:2:k;
b(2:2:end) = 4./(aux*pi);

[x, t] = SomaFourier(1/Fa, fo, 4, a , b);

[a, b] = Coef(Ta, To, x, k)
