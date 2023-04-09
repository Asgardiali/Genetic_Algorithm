% PID Example Code

clear all
clc

num = [1];
den = [1 6 5 0];

Gp = tf(num,den,'inputname','Sistem Giriþi','outputname','Sistem Çýkýþý');
H = zpk(1);

closeLoop = feedback(Gp,H);

step(closeLoop)
grid on

%%

Kp = 5;
Ki = 0;
Kd = 0;

Gc = pid(Kp,Ki,Kd);

closeLoopControlled = feedback(Gc*Gp,H);

step(closeLoopControlled);
grid on;
hold on;




