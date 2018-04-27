clc;
clear all;
close all;
m=input('Please enter the number of input data: ');
for i=1:1:m
    y(i)=input('data: ');
end
 
n=input('Enter the postion of zero index: ');
p=1-n;
for i=1:1:m
    x(i)=p;
    p=p+1;
end
x
y
