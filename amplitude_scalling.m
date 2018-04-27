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
fprintf('Enter 1 for multiple amplitude scalling\nEnter 2 for divide amplitude scalling\n');
w=input('Enter your choice :');
if w==1
v=input('Enter the value that are multiple amplitude scalling: ');
for i=1:1:n
    y(i)=v*y(i);
end
end
if w==2
   v=input('Enter the value that are divide amplitude scalling: ');
for i=1:1:n
    y(i)=y(i)/v;
end 
end
subplot(2,1,2);
stem(x,y);
xlabel('Time->');
ylabel('Amplitude->');
title('After amplitude scaling graph');
