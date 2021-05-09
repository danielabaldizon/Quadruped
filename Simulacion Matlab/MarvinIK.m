% Cinemática inversa de posición y orientación de Marvin

% Td es la pose del efector final
% q0 es la posición inicial de la pata
% soloP indica si calcular cinemática inversa completa (1) o solo posición
% (0)
function q = MarvinIK(Td, q0, soloP, pata)
    tol_p = 1e-06; % Tolerancia del error de posición
    tol_o = 1e-05; % Tolerancia del error de orientación
    % Número máximo de iteraciones (reducir en caso de mala performance 
    % durante la simulación)
    K = 50; 
    
    % Inicialización de variables
    q = q0;
    k = 0;
    
    % Error de posición
    T = MarvinFK(q,pata);
    p = T(1:3,4);
    pd = Td(1:3,4);
    e_p = pd-p;
    
    % Error de orientación
    Q = rot2cuat(T(1:3,1:3));
    Qd = rot2cuat(Td(1:3,1:3));
    Qe = multcuat(Qd,invcuat(Q));
    e_o = Qe(2:4);
    if soloP == 1
        e_o = [1 1 1];
    end
    % Complete la inicialización y el ciclo responsable de implementar el
    % método iterativo, según el algoritmo descrito en la guía del
    % laboratorio y sus notas de clase
    while((norm(e_p) > tol_p) && (norm(e_o) > tol_o) && (k < K))
        
        T = MarvinFK(q,pata);
        J = MarvinJ(q,pata);
        Jq = J(1:3,:);
        p = T(1:3,4);
        e_p = pd-p;
        
        if soloP == 1
            e_o = [1 1 1];
        else
            Q = rot2cuat(T(1:3,1:3));
            Qe = multcuat(Qd,invcuat(Q));
            e_o = Qe(2:4);
        end
        % Complete el cálculo de la expresión que sustituye a la inversa
        % del jacobiano para el método de Levenberg-Marquadt
        if(soloP == 1)    
            lambda2 = 0.01;
            X = Jq*Jq';
            Ji = Jq'/(X+lambda2*eye(length(X)));
            e = e_p;
        else
            lambda2 = 0.01;
            X = J*J';
            Ji = J'/(X+lambda2*eye(length(X)));
            e = [e_p; e_o];% Se combinan los errores de posición y orientación
        end
        
        q = q + Ji*e; % Se actualiza la solución
        k = k + 1;
    end
end