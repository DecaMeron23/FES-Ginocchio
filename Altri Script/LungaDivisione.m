function [E,R] = LungaDivisione(numeratore , denominatore , passi)
% LungaDivisione: Questa funzione esegue la divisione tra polinomi, per
% sviluppare il controllo GMV, numeratore e denominatore sono array mentre
% passi è un intero. L'ipotesi che si fanno sono che C(z) / A(z) siano in
% forma canonica ovvero: coprimi, radici dentro il cerchio unitario, monici
% e stesso grado. ritorna due array: E quoziente e R resto.

%Aumento la lungezza di denominatore con tanti zeri quanti passi dobbiamo
%fare
denominatore = [denominatore , zeros(1 , passi)];
% li porto allo stessa lunghezza aggiungendo zeri
[numeratore , denominatore] = StessaLunghezza(numeratore , denominatore);

E = [];
R = numeratore;
for i = 1:passi
    E(i) = R(i) / denominatore(1);
    for j = i:length(denominatore)
        sottrazione = -E(i) * denominatore(j-i+1);
        risultato = R(j) + sottrazione;
        R(j) = risultato;
    end
end

end

function [A, B] = StessaLunghezza(A , B)

l_a = length(A);
l_b = length(B);

l_max = max([l_a , l_b]);

if l_max > l_b
    B = [B , zeros(1 , l_max - l_b)];
elseif l_max > l_a
    A = [A , zeros(1 , l_max - l_a)];
end
end
