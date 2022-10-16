%% Symbols 
syms q1 q2 dq1 dq2 m1 m2 r1 r2 l1 l2 I1 I2 g t
%% Actual Physical parameters 
m1=1;
m2=1;
l1=1;
l2=1;
r1=0.45;
r2=0.45;
I1=0.084;
I2=0.084;
g=9.81;

a = I1 + I2 + m1*r1^2 + m2*(l1^2 + r2^2);
b = m2*l1*r2;
d = I2 + m2*r2^2;

Mmat= [a+2*b*cos(q2), d+b*cos(q2); d+b*cos(q2), d];
Cmat= [-b*sin(q2)*dq2, -b*sin(q2)*(dq1+dq2); b*sin(q2)*dq1,0];
Gmat= [-m1*g*r1*sin(q1)-m2*g*(l1*sin(q1)+r2*sin(q1+q2)); -m2*g*r2*sin(q1+q2)];
%% Nominal values
m1_hat = 0.75; 
m2_hat = 0.75;
I1_hat = 0.063;
I2_hat = 0.063;

a = I1_hat + I2_hat + m1_hat*r1^2 + m2_hat*(l1^2 + r2^2);
b = m2_hat*l1*r2;
d = I2_hat + m2_hat*r2^2;

Mmat_hat= [a+2*b*cos(q2), d+b*cos(q2); d+b*cos(q2), d];
Cmat_hat= [-b*sin(q2)*dq2, -b*sin(q2)*(dq1+dq2); b*sin(q2)*dq1,0];
Gmat_hat= [-m1_hat*g*r1*sin(q1)-m2_hat*g*(l1*sin(q1)+r2*sin(q1+q2)); -m2_hat*g*r2*sin(q1+q2)];
