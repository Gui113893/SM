hold on;
for k=10:100:1000

fo = 1;
Fa = 1000;

a = zeros(1, k+1);
b = zeros(1, k+1);
aux = 1:2:k;
b(2:2:end) = 4./(aux*pi);

[sinal, t] = SomaFourier(1/Fa, fo, 4, a , b);
plot(t, sinal);
end
hold off;


