clear all;
L=input ('length of dipole = ');
r=input ('radius of dipole = ');
Y=input ('wavelength = ');
c = 3 * 10 ^ 8;
f = c / Y;
U = 0.0032;
P = (L /(2 * r));
X = -120 * Y / (pi/L) * (log(P) -1);
rloss=L/(6*pi*r)*sqrt((pi*f*U)/2*r);
rrad=20*pi^2*(L/Y)^2;
Z = rrad + rloss + J* X;
fprintf('\n reactance =  %6.4f',X);
fprintf('\n radiation resistance = %6.4f',rrad);
fprintf('\n resistance loss = %6.4f',rrad);
fprintf('\n input impedance = %6.4f+j%6.4f \n',real(Z),imag(Z));