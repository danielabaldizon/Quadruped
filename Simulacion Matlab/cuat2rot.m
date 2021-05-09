function [R] = cuat2rot(Q)
%Función que toma un cuaternion y devuelve la matriz de rotación
n = Q(1);
e = Q(2:4);
R = (n^2-e'*e)*eye(3)*2*n*skew(e)+2*(e*e');
end

