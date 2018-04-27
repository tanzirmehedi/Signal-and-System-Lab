clear all;
close all;
clc;
n=input('Enter the number of element: ');
for i=1:1:n
y(i)=input('Number : ');
end
 fprintf('Please enter the input from 1 to %d for zero index\n',n);
 m=input('Enter the zero index: ');
if m>n
    fprintf('Program is terminated\n');
end
p=1-m;
for i=1:1:n
x(i)=p;
p=p+1;
end
%p=3
subplot(2,1,1);
stem(x,y);
xlabel('Time->');
ylabel('Amplitude->');
title('Original graph');

p=p-1;%we need p=2
r=n;
for i=1:1:n
    x(i)=-p;
    d(i)=y(r);
    p=p-1;
    r=r-1;
end
subplot(2,1,2);
stem(x,d);
xlabel('Time->');
ylabel('Amplitude->');
title('After time reversal graph');
