function wert=exponential_euler(equation,A,B,initial_value,steps)
% A should be a specific value 100*1 in this document
% B should be a specific value oder a sym containing t 100*1 
%steps should be a specific value
%equation is just a signal, no influence to the calculate.
%initial value should be a array containing
syms V_n t;

y=[];         
y(:,1)=initial_value;
V_n=y(:,1);    %注意指数欧拉的递推公式，t只在输入参数B中含有t的时候才会影响结果，在其他时候（比如说方程右边无t），t的值不会参与计算，所以没有影响。

    
y(:,2)=V_n.*exp(A.*steps)+(double(subs(B))./A).*(exp(steps.*A)-1); %Iterative formula
    

wert=y(:,2);  

end
