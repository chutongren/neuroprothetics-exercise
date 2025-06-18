function [V1]=implicit_euler(V0,I_HH,I_stim,Ra,C,C_m,dt)
%注意，这里的I_HH,I_stim都是下一次的值





I=eye(100);
A=I-(dt/(C_m*Ra))*C;
b=V0+(dt/C_m)*(-I_HH+I_stim);
V1=A\b;
end
