function xspat=shape_functions(xmat,xs)
%Get spatial coordinates using bilinear shape functions
x=xmat(1);y=xmat(2);
n(1)=0.25*(1-x)*(1-y);
n(2)=0.25*(1+x)*(1-y);
n(3)=0.25*(1+x)*(1+y);
n(4)=0.25*(1-x)*(1+y);
xs

xspat=n*xs'
