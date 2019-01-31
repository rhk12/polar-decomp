function vector_plot(xorig,yorig,v,scale,color)
% Plots a vector v with origin x, y half way along vector scaled 
px(1)=xorig-scale*v(1)/2;
py(1)=yorig-scale*v(2)/2;
px(2)=px(1)+scale*v(1);
py(2)=py(1)+scale*v(2);
plot(px,py,color)
