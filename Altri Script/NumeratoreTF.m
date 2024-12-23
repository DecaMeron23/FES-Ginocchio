function fdt = NumeratoreTF(numeratore , Ts)
    %NUMERATORE_TF Summary of this function goes here
    %   Detailed explanation goes here
    fdt = tf(numeratore , 1 , Ts);
    fdt.Variable = "z^-1";
    fdt.Denominator = 1;
end