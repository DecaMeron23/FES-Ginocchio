function risultato = SommaArray(a , b)
%SommaArray: serve ad eseguire somma punto a punto anche se
% hanno lunghezze diverse

l_a = length(a);
l_b = length(b);
length_max = max([l_a , l_b]);

risultato = zeros(1 , length_max);
for i = 1:length_max
    if i > l_b && i > l_a
        break;
    elseif i> l_b
        risultato(i) = risultato(i) + a(i);
    elseif i > l_a 
        risultato(i) = risultato(i) + b(i);
    else
        risultato(i) = a(i) + b(i);
    end
end