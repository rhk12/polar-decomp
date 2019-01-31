function F=deformation_gradient(xmat,xs,ys)
%Calculate deformation gradient
x=xmat(1);
y=xmat(2);
grad(1,1)=-0.25*(1-y); grad(1,2)=+0.25*(1-y); grad(1,3)=+0.25*(1+y); grad(1,4)=-0.25*(1+y);
grad(2,1)=-0.25*(1-x); grad(2,2)=-0.25*(1+x); grad(2,3)=+0.25*(1+x); grad(2,4)=+0.25*(1-x);
%
grad;
v=[xs' ys'];
F=grad*v;
F=F';

 