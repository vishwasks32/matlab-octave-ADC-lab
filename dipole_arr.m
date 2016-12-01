clc;
lambda=input('enter the value of wavelength= ');
l=input('enter your dipole length in terms of lambda (for ex:0.5 for lambda)= ');
ratio=l/lambda;
B=(2*pi/lambda);
theta=pi/100:pi/100:2*pi;
if ratio<=0.1
E=sin(theta);
En=abs(E);
polar(theta, En);
title('Fied pattern of dipole array');
else
f1=cos(B*1/2 .* cos(theta)); 
f2=cos(B*1/2);
f3=sin(theta);
E=(f1-f2)./f3;
En=abs(E);
polar(theta,En);
title('Fied pattern of dipole array');
end;