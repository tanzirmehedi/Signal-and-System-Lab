clear all;
close all;
clc;
n=input('Enter the number of element: ');
for i=1:1:n
y(i)=input('Number: ');
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

subplot(2,1,1);
stem(x,y);
xlabel('Time->');
ylabel('Amplitude->');
title('Original graph');
fprintf('Enter 1 for advance time shifting\nEnter 2 for delay time shifting\n');
w=input('Enter your choice: ');
if w==1
v=input('Enter the value that are advance shifting: ');
for i=1:1:n
    x(i)=x(i)-v;
end
end
if w==2
   v=input('Enter the value that are delay shifting: ');
for i=1:1:n
    x(i)=x(i)+v;
end 
end
subplot(2,1,2);
stem(x,y);
xlabel('Time->');
ylabel('Amplitude->');
title('After time shifting');
