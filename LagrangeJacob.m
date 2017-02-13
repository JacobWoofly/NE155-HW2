x=[0,2,3,4];
f=sin(pi/2*x)+(x.^2)/2;
t=linspace(-.5,4.5);
true=sin(pi/2*t)+(t.^2)/2;
L=ones(length(x),length(t));
P3=zeros(1,length(t));
for k=1:length(x);
        for i=1:length(x)
            if i==k
                L=L;
            else
                L(k,:)=L(k,:).*((t-x(i))./(x(k)-x(i)));
            end
        end
    P3=P3+f(k)*L(k,:);    
end
plot(t,P3,t,true, x,f,'*');
legend('P3(x)','f(x)','xi','location','northwest')