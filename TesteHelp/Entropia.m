function H = Entropia(Frequencia)
    prob = Frequencia/100;
    H = - sum(prob.*log2(prob));
end