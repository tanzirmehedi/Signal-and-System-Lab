clc;
close all;
clear all;
syms z;
%pole and zeros
num=[1 1 1.5 0.5];
den=[1 1.5 0.5 0];
disp('zeros of the given ZT are');
zeros=roots(num)
disp('poles of the given ZT are');
poles=roots(den)
%pole zero plot
ts=0.2;
h=tf('z');
disp('the taken ZT is')
h=tf(num,den,ts)
pzmap(h);