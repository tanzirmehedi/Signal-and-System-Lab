clc;
clear all;
n=input('Enter the number of input data: ');
for i=1:1:n
      y(i)=input('Data: ');
end
m=input('Enter the position of zero index: ');
q=-(m-1);
for i=1:1:n
    x(i)=q;
    q=q+1;
end
fprintf('\n\n');
disp('The function representation is: ');
for i=1:1:n
    fprintf(' x(%d):%d\n',x(i),y(i));
end; 
