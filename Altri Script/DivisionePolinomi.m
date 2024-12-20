function [E,R] = DivisionePolinomi(numeratore,denominatore , passi)
% DivisionePolinomi: Questa funzione esegue la divisione tra polinomi, per
% sviluppare il controllo GMV, numeratore e denominatore sono rappresentati
% da un array di valori oridnato per grado mentre passi è un intero.
% L'ipotesi che si fanno sono che C(z) / A(z) siano in forma canonica
% ovvero: coprimi, radici dentro il cerchio unitario, monici e stesso
% grado.

R = numeratore;
E = zeros( 1 , passi-1);

for i = 1:passi
   
    temp = R(i)/denominatore(i);
    E(i) = temp;

    array_da_sottrarre = E(i) * denominatore;
    
    R = SottrazioneArray(R , array_da_sottrarre);

end

end