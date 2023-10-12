function [a, b] = Coef(Ta, To, x, k)
    n = To/Ta;
    x1 = x(1:n);
    t = (0:n-1)*Ta;
    fo = 1/To;
    a = zeros(1, k+1);
    b = a;
    a(1) = mean(x1);
    b(1) = 0;
    for k = 2: k+1
        a(k) = (2/n) * sum(x1.*cos(2*pi*(k-1)*fo*t));
        b(k) = (2/n) * sum(x1.*sin(2*pi*(k-1)*fo*t));
    end
end
