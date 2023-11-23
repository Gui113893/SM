function [Simbolos, Frequencia] = Alfabeto2(Texto)
    Simbolos = unique(Texto);
    Frequencia = zeros(1, length(Simbolos));
    for i=1:length(Simbolos)
        Frequencia(i) = (sum(Simbolos(i) == Texto) / length(Texto)) * 100;
    end
end