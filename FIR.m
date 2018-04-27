clc;
clear all;
close all;
b=[4 5 6 ];
a=[1 2 3];
bb=b(1);
x=[1 2 3 8 9 4 6 7 10];
[k l]=size(b);
n=length(x);
w=zeros(k+1,n);
w(1,:)=x;
for i=1:1:k
     w(i+1,:)=filter(b(i,:),a(i,:),w(i,:));
end
y=bb*w(k+1,:);
disp('Output of the final filter operation')
disp(y)