function [Q3] = multcuat(Q1,Q2)
%Función que multiplica cuaterniones
n1 = Q1(1);
n2 = Q2(1);
e1 = Q1(2:4);
e2 = Q2(2:4);
Q3 = [n1*n2-e1'*e2;n1*e2+n2*e1+skew(e1)*e2];
end

