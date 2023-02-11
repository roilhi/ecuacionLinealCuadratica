function trans = TransponerMatriz(mat)
% función que transpone una matriz, cambia las columnas a renglon
% y viceversa
    [a,b] = size(mat);
    trans = zeros(b,a);
    for k=1:a
        for l=1:b
            trans(l,k) = mat(k,l); 
        end
    end
end