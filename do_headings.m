function do_headings
% display heading information for Polardecomposition.m
disp('____________________________________________________________')
disp('2D Polar decomposition calculator')
disp('written by R.D. Wood last update April 2008')
disp('____________________________________________________________');disp(' ')
disp('The MATERIAL configuration is a 2 x 2 square centered at [0 0].')
disp('X and Y are used for coordinates X1 and X2, see Figure No.1')
disp('window for node numbering.') 
disp('Input is required for the spatial x(x1) and y(x2) coordinates.')
disp('For MATERIAL coordinates, chosen by the user, within the 2 x 2 ')
disp('configuration,eg. X=0, Y=0 , the program calculates the:');disp(' ')
disp('(1) corresponding spatial coordinate--xyspat')
disp('(2) deformation gradient tensor F and detF')
disp('(3) right Cauchy-Green tensor C')
disp('(4) stretches stretch1 & stretch2 and ')
disp('    principal material unit vectors N1 & N2')
disp('(5) stretch tensor U')
disp('(6) rotation tensor R and principal spatial unit vectors n1 & n2')
disp('(7) Greens strain tensor E')
disp('    and a plot of the principal directions');disp(' ')
disp('type CTRL+C to terminate program');
disp('type any key to continue after a pause');disp(' ')
disp('____________________________________________________________');disp(' ')
