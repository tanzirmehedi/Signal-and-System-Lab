clear all;
close all;
clc;
n=input('Enter the number of input data: ');
for i=1:1:n 
    y(i)=input('Data: ');
end
m=input('Enter the position of zero index: ');
p=1-m;
for i=1:1:n
    x(i)=p;
    p=p+1;
end

for i=1:1:n
    if(i==m)
        s(i)='^';
    else
        s(i)=' ';
    end 
end
    
for i=1:1:n
    if(i<n)
       fprintf('%d ',y(i));
    else
        fprintf('%d \n',y(i));
   end
end
for i=1:1:n
    if(i<m)
       fprintf('%c ',s(i));
   else
        fprintf('%c \n',s(i));
    end
end
