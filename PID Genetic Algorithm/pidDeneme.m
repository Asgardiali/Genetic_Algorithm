syms s;

Kp = 5;
Ki = 0;
Kd = 0;

num = 1;
den = s^2+5*s+6;

Gp = num/den;

Gc = Kp+(Ki/s)+Kd*s;

H=1;

closeLoopControlled = (Gc*Gp)/(1+Gc*Gp);

step(closeLoopControlled);

grid on;
hold on;

