clc;
clear all;
close all;
syms n wo
for i=1:1:1
    in(i)=input('Enter the function of n: ');
end
a=in;
disp('The input equation is: ')
disp(a)
b=ztrans(a);
disp('The z-transform is : ')
disp(b)
disp('In beautiful way the z-transform is: ')
pretty(b)


c=iztrans(b);
disp('The Inverse Z-Transformation is: ')
disp(c);

