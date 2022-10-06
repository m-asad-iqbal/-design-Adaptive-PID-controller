%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variable initialization
%%%%%%%%%%%%%%%%%%%%%%%%%%%
L = 0.5;
mCart = 10;
mPend = 0.1;
Kd = 0.005; %damping coeifficient

Mp=10; %Mass of body(kg)
Iw=0.000039; %Inertia of the cart(kg*m^2)
l=0.5;%0.5; %Length to the body's centre of mass(m)
g=9.81; %Gravity(m/s^2)
m=0.1; %Mass of inverted pendulum(kg)
Ip=(1/12)*m*(l^2); %Inertia of the body(kg*m^2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initialization for A3C-PID algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m_algo = 4; % no of threads in A3C algo
alpha_a = 0.002; %lerning rte of of ctor 
alpha_c = 0.001; % lernign rte of critic
epsilon = 0.001;
g_factor = 0.9; % discount fctor 
n_period = 50; %no of period in algo
K = 1000; %ietrtion lerning on K times
theta0 = 0; %position taget value
Ts = 0.02;
Tf = 23;
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% arbitary Motor's variables
r= 0.051; %0.051; %Radius of wheel(m)
Km = 0.0235;%0.0235%0.006123; %Motor torque constant (Nm/A)
Ke = 0.006087;%0.0069203; %Back EMF constant (Vs/rad)
R = 3; %Nominal Terminal Resistance (Ohm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%precalculation to simplyfy the system matrix
%Denominator for the A and B matrices
beta = (2*m+(2*Iw/r^2)+Mp);
alpha = (Ip*beta + 2*Mp*l^2*(m + Iw/r^2));
A = [0 1 0 0;
0 (2*Km*Ke*(Mp*l*r-Ip-Mp*l^2))/(R*r^2*alpha) (Mp^2*g*l^2)/alpha 0;
0 0 0 1;
0 (2*Km*Ke*(r*beta - Mp*l))/(R*r^2*alpha) (Mp*g*l*beta)/alpha 0]
B = [ 0;
(2*Km*(Ip + Mp*l^2 - Mp*l*r))/(R*r*alpha);
0;
(2*Km*(Mp*l-r*beta)/(R*r*alpha))]
C = [1 0 0 0;
0 0 1 0]
D = [0;
    0]
%Transfer function for state space model
disp('Transfer Function of the system')
[num,den] = ss2tf(A,B,C,D) 
xtf = tf([0.3129 0 -43.3383],[1 0.0373 -172.1160 -5.1726 0])
Qtf = tf([0.9428 0 0],[1 0.0373 -172.1160 -5.1726 0])
s = tf('s')
%pzmap(Qtf)
%%rltool rootlocus plot
%rltool(Qtf)