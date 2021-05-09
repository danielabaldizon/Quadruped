function J = MarvinJ(q,pata)
    % El argumento q es el vector de configuración, asuma que está dado por
    % un vector columna q = [q1 q2 q3]'.
    
    n = 3; % Dimensión de la configuración de cada pata de Marvin
    delta = 0.00001;
    
    T = MarvinFK(q,pata); 
    R = T(1:3, 1:3); % Matriz de rotacion
    
    % Inicialización del jacobiano
    J = zeros(6, n);
    
    for j = 1:n
        e = zeros(n, 1);
        e(j) = delta;
        
        dKdqj = (MarvinFK(q+e,pata) - T) / delta;
        dOdqj = dKdqj(1:3,end);
        dRdqj = dKdqj(1:3,1:3);
        S = dRdqj*R.';
        dthetadqj = vex(S);
        
        J(:, j) = [dOdqj; dthetadqj];
    end
end 