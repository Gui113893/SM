Simbolos = 'ABCDE';
Frequencia = [14, 64, 5, 10, 7];
prob = Frequencia/100;

% Entropia retorna a entropia H recebendo a frequencia
% Se não houver frequencia, Frequencia = prob*100 ou muda-se a função
% Entropia para receber prob diretamente
H = Entropia(Frequencia);
disp("H=");
disp(H);

%% Codificação de HUFFMAN
% Para calcular dicionario de codificação usando o código de huffman
huffmanDic = huffmandict(1:5, prob);
huffmanDic{1} = "A";
huffmanDic{2} = "B";
huffmanDic{3} = "C";
huffmanDic{4} = "D";
huffmanDic{5} = "E";

string = "AABCDAAEBEDD";
% huffmanenco codifica uma string usando huffmanDic
huffmancode = huffmanenco(string, huffmanDic);

% huffmandeco descodifica uma codigo huffman usando huffmanDic
string = huffmandeco(huffmancode, huffmanDic);

%% Codificação Aritmética

% A = [0.00, 0.14[
% B = [0.14, 0.78[
% C = [0.78, 0.83[
% D = [0.83, 0.93[
% E = [0.93, 1.00[

arithDic = arithDict(Frequencia, 1:5);
arithDic{1} = "A";
arithDic{2} = "B";
arithDic{3} = "C";
arithDic{4} = "D";
arithDic{5} = "E";

string = 'ABCDEAABCDEEEABCDE'; %18 é o máximo de precisão para dar decode
[code, intervalo] = arithEncode(arithDic, string, [0,1]);
string = arithDecode(18, arithDic, code);






