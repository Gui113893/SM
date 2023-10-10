Ta = 0.01;
t = 0:Ta:5;
x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z = x.*y;
w = 3*sin(pi*t) + 2*sin(6*pi*t);

hold on
plot(t, x, "-r");
plot(t, y, "b");
plot(t, z, "go");
plot(t, w, "y");