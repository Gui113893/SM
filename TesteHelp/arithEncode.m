function [code, intervalo] = arithEncode(arithDict, string, intervalo)
    for letra=1:length(string)
        valorProcurado = string(letra);
        valorAssociado = [];
        for i = 1:size(arithDict, 1)
            if strcmp(arithDict{i,1}, valorProcurado)
                valorAssociado = arithDict{i, 2};
                break;
            end
        end
        prob = intervalo(2) - intervalo(1);
        intervalo(1) = prob*valorAssociado(1) + intervalo(1);

        diff = valorAssociado(2) - valorAssociado(1);
        intervalo(2) = prob*diff + intervalo(1);
    end
    code = (intervalo(2)+intervalo(1))/2;
end