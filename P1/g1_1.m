Ta = 0.1;

%a)
figure(1);
t = 0:Ta:5;
x = 2*sin(4*pi*t);
plot(t, x);

%b)
figure(2);
y = cos(10*pi*t);
plot(t, y);

%c)
figure(3);
z = x.*y;
plot(t, z);

%d)
t = 0:Ta:10;
figure(4);
w = 3*sin(pi*t) + 2*sin(6*pi*t);
plot(t, w);

%e)
t1 = 0:Ta:5;
t2 = t1;
figure(5);
q = 2*sin(2*pi*(2*t1 + t2));
plot(t1, q);




