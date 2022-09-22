syms l1 l2 t t1 t2 c1 c2 s1 s2 
l1 = 10; 
l2 = 10;
for t=0:0.01:2*pi
    X = (sin(2*t) + 0.25*sin(6*t))*cos(t);
    Y = (sin(2*t) + 0.25*sin(6*t))*sin(t);
    
    c2 = (X^2 + Y^2 - l1^2 - l2^2)/(2*l1*l2); 
    s2 = sqrt(abs(1-c2^2)); 
    t2 = atan2(s2,c2);
    
    c1 = X*(l1+l2*c2) + Y*l2*s2;
    s1 = Y*(l1 + l2*c2) - X*l2*s2;
    t1 = atan2(s1,c1);
    
    Px = l1*cos(t1) + l2*cos(t1+t2);
    Py = l1*sin(t1) + l2*sin(t1+t2);
    
    %Ve Bieu Do
    subplot(2,1,1);
    plot(t,t2*180/pi,'-o');  
    pause(0.1);
    xlabel('t'); ylabel('rotation')
    hold on
    subplot(2,1,2);
    plot(Px,Py,'*');
    pause(0.1);
    xlabel('x(cm)'); ylabel('y(cm)'); 
    pause(0.1);
    hold on
end