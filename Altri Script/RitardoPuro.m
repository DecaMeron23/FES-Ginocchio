function fdt = RitardoPuro(ritardo ,Ts)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
numeratore = [zeros(1 , ritardo) , 1];
denominatore = fliplr(numeratore);
fdt = tf(numeratore , denominatore , Ts);
fdt.Variable = "z^-1";
end