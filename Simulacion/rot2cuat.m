function [Q] = rot2cuat(R)
%Calcula el cuaternion apartir de la matriz de rotación
n = 1/2*sqrt(1+(R(1,1)+R(2,2)+R(3,3)));
e = 1/(4*n)*[R(3,2)-R(2,3);R(1,3)-R(3,1);R(2,1)-R(1,2)];
Q = [n;e];
end

