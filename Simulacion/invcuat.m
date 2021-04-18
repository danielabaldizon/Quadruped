function [Qinv] = invcuat(Q)
%La inversa del cuaternion
Qinv = [Q(1);-Q(2:4)];
end

