function [y] = ReconstroiSinal(x, Ta)
    Ts = Ta/100;
    fa = 1/Ta;
    N = length(x);
    y = zeros(1,100*N);
    t = (0:length(y)-1)*Ts;
    for n=1:N
        y = y + x(n)*sinc(fa*(t-(n-1)*Ta));        
    end
    plot(t, y);
end