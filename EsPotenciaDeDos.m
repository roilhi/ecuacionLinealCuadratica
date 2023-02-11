function val = EsPotenciaDeDos(numero)
    % Se ingresa un número y se define si es o no potencia de dos
    % regresa 1 si "numero" es potencia de dos, de otro modo regresa 0.
    % simplemente dividimos 
    % log10(num)/log10(2)
    check = log(numero)/log(2);
    % si el resultado de la divisi�n no es decimal, entonces
    % el n�mero es potencia de dos
    val = mod(check,1)==0;
end