x=[1,2,3,4,5,6,7];
fx=[1,4,10,12,5,4,0];
t=linspace(.75,6.25,1000);
P1=interp1(x,fx,t);
PSpline=interp1(x,fx,t,'spline');
PLagrange=interp_lagrange(x,fx,t);
plot(t,P1,t,PSpline,t,PLagrange,x,fx,'*');
legend('Linear','Spline','Lagrange')
axis([.75 6.25 -5 13])