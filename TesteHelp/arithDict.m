function dict = arithDict(freq, simbs)
    probs = freq/100;

    dict = cell(length(simbs), 2);
    
    inicio = 0;
    for i = 1:length(dict)
        dict{i,1} = simbs(i);
        dict{i,2} = [inicio, inicio+probs(i)];
        inicio = inicio+probs(i);
    end
end