%a)
Ta = 0.2;
t = 1:Ta:5-Ta;
x = sin(2*pi*t);
figure(1);
plot(t, x);
figure(2);
ReconstroiSinal(x, Ta);
%b)
Ta = 0.04;
t = 1:Ta:5-Ta;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t- pi/4);
figure(3);
plot(t, x);
figure(4);
ReconstroiSinal(x, Ta);



