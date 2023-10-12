function [x, t] = SomaFourier(Ta, fo, np, ak, bk)
    To = 1/fo;
    t = 0:Ta:np*To - Ta;
    x = 0;

    for k = 1:length(ak)
        x = x + ak(k)*cos(2*pi*(k-1)*fo*t) + bk(k)*sin(2*pi*(k-1)*fo*t);
    end
end

