Ta = 0.001;
T = 1/2;

t = 0:Ta:3*T - Ta;
x = 2*sin(4*pi*t);

pot = potencia(x, Ta, T);
disp(pot);

T = 1/5;
x = sin(10*pi*t + pi/2);
pot = potencia(x, Ta, T);
disp(pot);

T = 1/10;
x = sin(20*pi*t + (70*pi)/180) + sin(20*pi*t + (200*pi)/180);
pot = potencia(x, Ta, T);
disp(pot);

T = 1;
x = sin(6*pi*t) + sin(8*pi*t);
pot = potencia(x, Ta, T);
disp(pot);

T = 1;
x = sin(6*pi*t) + sin(8*pi*t + 0.1);
pot = potencia(x, Ta, T);
disp(pot);

T = 1/2;
x = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);
pot = potencia(x, Ta, T);
disp(pot);
