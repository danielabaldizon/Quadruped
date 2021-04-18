function T = MarvinFK(q,pata)
    switch pata
        case 1 % pata 1
            DH = [ q(1)+pi/2, 25.05,    3.3,  pi/2; 
                   q(2)+pi/2, 27.3,   71.5,     pi; 
                   q(3)-pi/2, 19.8, 98.051,     pi/2]; 
            TOOL = troty(rad2deg(pi+q(2)-q(3)))*trotz(rad2deg(-q(1)));
        case 2 % pata 2
            DH = [ q(1)+pi/2, 25.05,    3.3, -pi/2; 
                   q(2)-pi/2, 27.3,   71.5,     pi; 
                   q(3)+pi/2, 19.8, 98.051,   -pi/2];
            TOOL = troty(rad2deg(pi-q(2)+q(3)))*trotz(rad2deg(-q(1)));
        case 3 % pata 3
            DH = [ q(1)+pi/2, 25.05,    3.3,  pi/2; 
                   q(2)-pi/2, 27.3,   71.5,     pi; 
                   q(3)+pi/2, 19.8, 98.051,  -pi/2]; 
            TOOL = trotx(180)*troty(rad2deg(pi+q(2)-q(3)))*trotz(rad2deg(-q(1)));
        case 4 % pata 4
            DH = [ q(1)+pi/2, 25.05,    3.3, -pi/2; 
                   q(2)+pi/2, 27.3,   71.5,     pi; 
                   q(3)-pi/2, 19.8, 98.051,     pi/2];
            TOOL = trotx(180)*troty(rad2deg(pi-q(2)+q(3)))*trotz(rad2deg(-q(1)));
        otherwise
            DH = [ q(1)+pi/2, 25.05,    3.3,  pi/2; 
                   q(2)+pi/2, 27.3,   71.5,     pi; 
                   q(3)-pi/2, 19.8, 98.051,     pi/2]; 
            TOOL = troty(rad2deg(pi+q(2)-q(3)))*trotx(rad2deg(q(1)));
    end
    T = getFK(DH)*TOOL; 
end