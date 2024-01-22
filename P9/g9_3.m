Simbolos = 'ACIMSU?';
Frequencia = [20, 30, 5, 5, 10, 20, 10];
prob = Frequencia./sum(Frequencia);

%a)
dicionario = huffmandict(1:7, prob);
dicionario{1} = 'A';
dicionario{2} = 'C';
dicionario{3} = 'I';
dicionario{4} = 'M';
dicionario{5} = 'S';
dicionario{6} = 'U';
dicionario{7} = '?';
disp("Dicionario: ");
disp(dicionario);

%b)
%Entropia
H = - sum(prob.*log2(prob));
disp("H=");
disp(H);




