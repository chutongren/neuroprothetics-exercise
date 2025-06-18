
dt=25e-6;
t_end=100e-3;
T=6.3;
V_rest=0;
t = 0 : dt : t_end-dt;
 
I_stim=zeros(100,length(t));

I_stim(100,:)=5*stepfun(t,5e-3)-5*stepfun(t,10e-3);  
% I_stim(20,:)=5*stepfun(t,0)-5*stepfun(t,5e-3);
% I_stim(80,:)=5*stepfun(t,15e-3)-5*stepfun(t,20e-3);
% I_stim(20,:)=10*stepfun(t,0)-10*stepfun(t,5e-3);
% I_stim(80,:)=10*stepfun(t,0)-10*stepfun(t,5e-3);
I_stim=(1e-6)*I_stim;
%plot(t,I_stim);
[V,gates,I_ions,t] = hh_model(I_stim,t_end,dt,T,V_rest);
save('data_4.mat', 'V', 't');