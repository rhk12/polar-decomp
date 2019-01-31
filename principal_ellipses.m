%plot principal matrial and spatial unit vectors and ellipses
function principal_ellipses(xymat,xyspat,F,N1,N2,n1,n2,stretch1,stretch2)
radius=0.5;ndiv=50;angle=0;dangle=2*pi/ndiv;
for j=1:2
   for i=1:ndiv+1
       angle=angle+dangle;
       dx(1)=radius*cos(angle);
       dx(2)=radius*sin(angle);
       if j==1
          dvect=dx';centre=xymat;
       else
          dvect=F*dx';centre(1)=xyspat(1);centre(2)=xyspat(2);
       end
       xellipse(i)=centre(1)+dvect(1);
       yellipse(i)=centre(2)+dvect(2);
   end
   plot(xellipse,yellipse)
end
x=xymat(1);y=xymat(2);vector_plot(x,y,N1,1,'magenta');vector_plot(x,y,N2,1,'green')
x=xyspat(1);y=xyspat(2);vector_plot(x,y,n1,stretch1,'magenta');vector_plot(x,y,n2,stretch2,'green')