pw_1 = [];
while length(pw_1) <= 2001

    tempo = 5;
    elementi = tempo/Ts;
    pw_1 = [pw_1 ; rand(1 , 1) * ones(floor(elementi) , 1) * (pw_max  - pw_min)  + pw_min];
end

pw_1 = pw_1(1:2001);