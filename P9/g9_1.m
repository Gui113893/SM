Simbolos = 'ABCDE';
Frequencia = [14, 64, 5, 10, 7];

%a)
prob = Frequencia./sum(Frequencia);
H = - sum(prob.*log2(prob));
disp("H=");
disp(H);

%b)
dicionario = huffmandict(1:5, prob);
dicionario{1} = 'A';
dicionario{2} = 'B';
dicionario{3} = 'C';
dicionario{4} = 'D';
dicionario{5} = 'E';
disp("Dicionario: ");
disp(dicionario);


