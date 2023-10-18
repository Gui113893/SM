%a)
figure(1);
Ta = 1/100;
t = 0:Ta:2-Ta;
x = sin(2*pi*t);
figure(1);
[X, f] = Espetro(x, Ta);
figure(2);
Reconstroi(X, f);

%b)
t = 0:Ta:1-Ta;
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);
figure(3);
[X, f] = Espetro(y, Ta);
figure(4);
[x, t] = Reconstroi(X, f);


