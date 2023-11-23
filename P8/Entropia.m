function H = Entropia(Texto)
    [~, Frequencia] = Alfabeto2(Texto);
    prob = Frequencia/100;
    H = - sum(prob.*log2(prob));
end