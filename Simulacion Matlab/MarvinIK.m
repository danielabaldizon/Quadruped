% Cinem�tica inversa de posici�n y orientaci�n de Marvin

% Td es la pose del efector final
% q0 es la posici�n inicial de la pata
% soloP indica si calcular cinem�tica inversa completa (1) o solo posici�n
% (0)
function q = MarvinIK(Td, q0, soloP, pata)
    tol_p = 1e-06; % Tolerancia del error de posici�n
    tol_o = 1e-05; % Tolerancia del error de orientaci�n
    % N�mero m�ximo de iteraciones (reducir en caso de mala performance 
    % durante la simulaci�n)
    K = 50; 
    
    % Inicializaci�n de variables
    q = q0;
    k = 0;
    
    % Error de posici�n
    T = MarvinFK(q,pata);
    p = T(1:3,4);
    pd = Td(1:3,4);
    e_p = pd-p;
    
    % Error de orientaci�n
    Q = rot2cuat(T(1:3,1:3));
    Qd = rot2cuat(Td(1:3,1:3));
    Qe = multcuat(Qd,invcuat(Q));
    e_o = Qe(2:4);
    if soloP == 1
        e_o = [1 1 1];
    end
    % Complete la inicializaci�n y el ciclo responsable de implementar el
    % m�todo iterativo, seg�n el algoritmo descrito en la gu�a del
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
        % Complete el c�lculo de la expresi�n que sustituye a la inversa
        % del jacobiano para el m�todo de Levenberg-Marquadt
        if(soloP == 1)    
            lambda2 = 0.01;
            X = Jq*Jq';
            Ji = Jq'/(X+lambda2*eye(length(X)));
            e = e_p;
        else
            lambda2 = 0.01;
            X = J*J';
            Ji = J'/(X+lambda2*eye(length(X)));
            e = [e_p; e_o];% Se combinan los errores de posici�n y orientaci�n
        end
        
        q = q + Ji*e; % Se actualiza la soluci�n
        k = k + 1;
    end
end