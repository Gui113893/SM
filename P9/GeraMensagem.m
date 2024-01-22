function [NumBits, NumBPS] = GeraMensagem(f, CompMesg, nBits)
    N = length(f);
    NumBits=0;
    for n=1:N
        NumBits = NumBits + sum(Mesg == n)*nBits(n);
    end

        NumBPS = NumBits/ CompMesg;
end
