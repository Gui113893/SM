function [NumBits] = NumeroBitsCodigo2(Texto)
    [Simbolos, Frequencia] = Alfabeto2(Texto);
    Frequencia = sort(Frequencia, "descend");
    NumBits = 0;
    for i=1:length(Simbolos)
        nOcurrences = (Frequencia(i)/100) * length(Texto);
        NumBits = NumBits + i*nOcurrences;
    end
end