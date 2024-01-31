% Polar decomposition and principal directions
% R.D. Wood Oct.2003
%_________________________
% required M files
% number_nodes.m
% plot_nodes.m
% input_material_coords.m
% shape_functions.m
% deformation_gradient.m
% principal_ellipses.m
% vector_plot.m
% do_headings.m
%_________________________
clear;clf;clc
% do_headings displays program information
do_headings
% set up material (initial) configuration (2*2 square centered on (0,0)
x=[-1 1 1 -1 -1] 
y=[-1 -1 1 1 -1]
plot(x,y,'red');hold on
axis([-10 20 -10 20]);xlabel('x (x1)'),ylabel('y (x2)'),title('Polar decomposition')
number_nodes(x,y);plot_nodes(4,x,y,'black');grid on;axis square;
% input coordinates of spatial configuration
% interesting spatial coords xs=[5 10 15 10], ys=[6 2 4 16]
xs=input('input spatial x-coord list  in [ ] brackets > ')
ys=input('input spatial y-coord list  in [ ] brackets > ')
xs(5)=xs(1);ys(5)=ys(1);plot(xs,ys,'red');
number_nodes(xs,ys);plot_nodes(4,xs,ys,'black');
disp('See Figure No.1 window for spatial configuration');disp(' ');pause;pause on
% input principal direction material coords 
xymat=input_material_coords(x,y)
%
while isempty(xymat)<1
% find principal direction spatial coordinates     
xyspat(1)=shape_functions(xymat,xs(1:4));
xyspat(2)=shape_functions(xymat,ys(1:4))
plot_nodes(1,xymat(1),xymat(2),'blue');
plot_nodes(1,xyspat(1),xyspat(2),'red')
% finf deformation gradient
F=deformation_gradient(xymat,xs(1:4),ys(1:4)),detF=det(F),pause,
% find right Cauchy-Green tensor and eigenvectors
C=F'*F;[eigenvectors,eigenvalues]=eig(C);
% find stretches and principal material unit vectors 
stretch1=sqrt(eigenvalues(1,1)),stretch2=sqrt(eigenvalues(2,2)),pause
N1=eigenvectors(:,1),N2=eigenvectors(:,2),pause
% find stretch tensor
U=stretch1*N1*N1'+stretch2*N2*N2'

UdX=U*[x' y']'
plot(UdX(1,:),UdX(2,:),'blue');
number_nodes(UdX(1,:),UdX(2,:)); pause


% find rotation tensor and spatial principal directions
R=F*inv(U),pause,n1=R*N1,n2=R*N2
RUdX=R*(U*[x' y']')
plot(RUdX(1,:),RUdX(2,:),'green');
number_nodes(RUdX(1,:),RUdX(2,:)); pause

% find Green's strain tensor
I=eye(2);E=0.5*(C-I),pause
% plot principal ellipses
principal_ellipses(xymat,xyspat,F,N1,N2,n1,n2,stretch1,stretch2)
% input next principal direction material coords 
xymat=input_material_coords(x,y)
%
end
hold off