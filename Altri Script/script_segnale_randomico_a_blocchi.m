pw_3 = [];
while length(pw_3) <= 2001

    max_s = 5;
    min_s = 0.5;
    elementi = rand(1 , 1) * (max_s/Ts  - min_s/Ts)  + min_s/Ts ;
    pw_3 = [pw_3 ; rand(1 , 1) * ones(floor(elementi) , 1) * (pw_max  - pw_min)  + pw_min];
end

pw_3 = pw_3(1:2001);