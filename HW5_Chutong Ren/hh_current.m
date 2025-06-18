%------------------Exercise 4 hh_current template-------------------------%
%   Term:   WS2020/2021
%   Date:   22.11.2020
%-------------------------------------------------------------------------%   
function [gate, I_HH] = hh_current(last_V, dt, last_gate, T)
% this function calculates the ionic currents for the current time step
%
%   Inputs:
%       last_v:     Membrane potential at of the previous time step(100*1)
%       V:          Membrane potential of the current time step in V(100*1)
%       dt:         time step in s
%       last_gate:  gating variables of the previous time step(100*3)
%       T:          Simulation temperature in °C
%       ... :       You can also add the rate equations and constants as
%                   function parameters or define them again inside this
%                   function
%   Outputs:
%       gate:       gating variables of the current time step (vector 100*3)
%       I_ions:     ion currents of the current time step (vector 100*3)
%
V0=last_V;
m0=last_gate(:,1);
n0=last_gate(:,2);
h0=last_gate(:,3);
a_m=1000.*(2.5-100.*V0)./(exp(2.5-100.*V0)-1);
a_n=1000.*(0.1-10.*V0)./(exp(1-100.*V0)-1);
a_h=70.*exp(-50.*V0);
b_m=4000.*exp(-500.*V0./9);
b_n=125.*exp(-25.*V0./2);
b_h=1000./(exp(3-100.*V0)+1);

%% 1) calculate gating variables
% calculate the temperature correction factor
% Insert your code here:
K=3^(0.1*(T-6.3));
% obtain A and B coefficients for the exponential euler solver
% Insert your code here:
A_m=(-K.*(a_m + b_m));
B_m=K.*a_m;  
A_n=(-K.*(a_n + b_n));
B_n=K.*a_n;
A_h=(-K.*(a_h + b_h));
B_h=K.*a_h;  

% calculate gating variables m,n,h for current timestep using the exponential euler solver
% Insert your code here:

%wert=exponential_euler(equation,A,B,initial_value,steps
syms m n h
 m1=exponential_euler((a_m*(1-m)-b_m*m)*K, A_m,B_m,m0,dt); 
 n1=exponential_euler((a_n*(1-n)-b_n*n)*K, A_n,B_n,n0,dt); 
 h1=exponential_euler((a_h*(1-h)-b_h*h)*K, A_h,B_h,h0,dt); 

%% 2) calculate ionic currents
% Insert your code here:
g_Na=120e-3;
g_K=36e-3;
g_L=0.3e-3;
V_Na=115e-3;
V_K=-12e-3;
V_L=10.6e-3;

I_Na=g_Na.*m1.^3.*h1.*(V0-V_Na);
I_K=g_K.*n1.^4.*(V0-V_K);
I_L=g_L.*(V0-V_L);



%% 3) assign output
% Insert your code here:
gate =[m1,n1,h1];
I_HH=I_Na+I_K+I_L;
end

