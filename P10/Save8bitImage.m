function Save8bitImage(Filename, Image)
    [N, M] = size(Image);
    fid = fopen(Filename, 'wb');

    if fid == -1
        error('Erro ao abrir o arquivo para escrita.');
    end

    try
        fwrite(fid, N, 'uint16');
        fwrite(fid, M, 'uint16');
        fwrite(fid, Image, 'uint8');
        fclose(fid);

        fileinfo = dir(Filename);
        filesize = fileinfo.bytes;
        fprintf('O arquivo %s foi salvo com sucesso. Tamanho: %d bytes.\n', Filename, filesize);
    catch
        fclose(fid);
        error('Erro ao escrever no arquivo.');
    end
end
