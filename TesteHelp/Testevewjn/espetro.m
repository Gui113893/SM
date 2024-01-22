function [X,f] = espetro(x,Ta)
N=length(x);
Fa=1/Ta;

X=fftshift(fft(x));
if rem(N,2)==0
    f=(-N/2:N/2-1)*(Fa/N);
else
    f=((-(N-1)/2:(N-1)/2)*Fa/N);
end

    %plot(f, abs(X));
    %xlabel("Frequência (Hz)")
    %ylabel("Magnitude")
    %grid;
end

