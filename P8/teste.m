load("Text.mat");

fprintf("Comprimento: %d\n", length(Text));

[Simbolos, freq] = Alfabeto2(Text);
disp("Simbolos=");
disp(Simbolos);

H = Entropia(Text);
disp("Entropia=");
disp(H);

NBits = NumeroBitsCodigo2(Text);
disp("Nbits=");
disp(NBits);