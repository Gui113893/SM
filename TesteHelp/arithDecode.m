function string = arithDecode(nSimbs, arithDict, code)
    
    intervalos = cell(1, length(arithDict));
    for j = 1:length(arithDict)
        intervalos{j} = arithDict{j,2};
    end

    string = "";
    for i=1:nSimbs
        for j = 1:numel(intervalos)
            if code >= intervalos{j}(1) && code <= intervalos{j}(2)
                indiceEncontrado = j;
                break;
            end
        end
        string = string + arithDict{indiceEncontrado, 1};
        intervalo_inicial = intervalos{indiceEncontrado};

        for k = 1:length(arithDict)
            [~, intervalo] = arithEncode(arithDict, arithDict{k,1}, intervalo_inicial);
            intervalos{k} = intervalo;
        end
    end

end