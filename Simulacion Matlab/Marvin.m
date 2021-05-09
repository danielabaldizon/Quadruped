% Proyecto Quadrupedo - Robotica 1
% Daniela Baldizón - 17005
% Hee Chan Kim - 17040
%% Transformaciones 
% Usando la convencion de Euler YZY
% Motor 1 - derecha adelante
T1 = transl(94.7,-48,-51)*troty(-90)*trotz(-90)*troty(0);
% Motor 2 - izquierda adelante
T2 = transl(94.7,48,-51)*troty(-90)*trotz(-90)*troty(0);
% Motor 3 - izquierda atras
T3 = transl(-94.7,48,-51)*troty(90)*trotz(90)*troty(0);
% Motor 4 - derecha atras
T4 = transl(-94.7,-48,-51)*troty(90)*trotz(90)*troty(0);
%% Denavit Hartenberg

d1 = 25.05;
a1 = 3.3;
alpha1 = pi/2;
offset1 = pi/2;

d2 = 27.3;
a2 = 71.5;
alpha2 = pi;
offset2 = pi/2;

d3 = 19.8;
a3 = 93.051;
alpha3 = pi/2;
offset3 = pi/2;
 
% Pierna 1
L11 = Revolute('d',d1,'a',a1,'alpha',alpha1,'offset',offset1);
L12 = Revolute('d',d2,'a',a2,'alpha',alpha2,'offset',offset2);
L13 = Revolute('d',d3,'a',a3,'alpha',alpha3,'offset',-offset3);

% Pierna 2
L21 = Revolute('d',d1,'a',a1,'alpha',-alpha1,'offset',offset1);
L22 = Revolute('d',d2,'a',a2,'alpha',alpha2,'offset',-offset2);
L23 = Revolute('d',d3,'a',a3,'alpha',-alpha3,'offset',offset3); 

% Pierna 3
L31 = Revolute('d',d1,'a',a1,'alpha',alpha1,'offset',offset1);
L32 = Revolute('d',d2,'a',a2,'alpha',alpha2,'offset',-offset2);
L33 = Revolute('d',d3,'a',a3,'alpha',-alpha3,'offset',offset3);

% Pierna 4
L41 = Revolute('d',d1,'a',a1,'alpha',-alpha1,'offset',offset1);
L42 = Revolute('d',d2,'a',a2,'alpha',alpha2,'offset',offset2);
L43 = Revolute('d',d3,'a',a3,'alpha',alpha3,'offset',-offset3);
        
% Robot
pata1 = SerialLink([L11,L12,L13],'name','pata1','base',T1);
pata2 = SerialLink([L21,L22,L23],'name','pata2','base',T2);
pata3 = SerialLink([L31,L32,L33],'name','pata3','base',T3);
pata4 = SerialLink([L41,L42,L43],'name','pata4','base',T4);

p1 = [95, -48, -51]';
p2 = [95, 48, -51]';
p3 = [-95, 48, -51]';
p4 = [-95, -48,-51]';



x1 = [p1(1) p2(1) p3(1) p4(1)];
y1 = [p1(2) p2(2) p3(2) p4(2)];
z1 = [p1(3) p2(3) p3(3) p4(3)];

q0 = [0,0,0];
q1 = [0,0,0];

pata1.plot(q1,'zoom',3, 'nobase', 'notiles', 'noshadow', 'nojaxes');
hold on
pata2.plot(q0,'zoom',3, 'nobase', 'notiles', 'noname', 'noshadow', 'nojaxes');
pata3.plot(q0,'zoom',3, 'nobase', 'notiles', 'noname', 'noshadow', 'nojaxes');
pata4.plot(q0,'zoom',3, 'nobase', 'notiles', 'noname', 'noshadow', 'nojaxes');
patch(x1,y1,z1,[0.1 0.5 0.1]);
% 
% pata1.teach();
% pata2.teach();
% pata3.teach();
% pata4.teach();
