function plot(np,x,y,color)
% plots a 4-node 2D element
for n=1:np
    plot(x(n),y(n),'o','Markersize',6,'MarkerFaceColor',color)
end