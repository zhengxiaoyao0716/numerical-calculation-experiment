h=pi/20;
x=0:h:pi;
y=(x.*sin(x))./(1+(cos(x)).^2);
s1=sum(y(1:length(x)-1))*h
s2=sum(y(2:length(x)))*h
s3=trapz(x,y)
ff=inline('(x.*sin(x))./(1+(cos(x)).^2)','x');
s4=quad(ff,0,pi)