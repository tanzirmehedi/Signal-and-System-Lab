clc;
clear all;
close all;

m = input ('Input the length x(n) : ');
for i=1:1:m
    fprintf('Values of x(%d): ',i);
    x(i)=input('');
end
xzero = input ('Zero index of x(n) : ');

n = input ('Input the length of h(n) : ');
for i=1:1:n
    fprintf('Values of h(%d): ',i);
    h(i)=input('');
end
hzero = input ('Zero index of h(n) : ');

total = n+m-1;
start = -hzero -xzero+2;
stop = total + start - 1;

fprintf('Total values: %d\n',total);
fprintf('Start Index: %d\n',start);
fprintf('Stop Index: %d\n',stop);

for i=1:1:total
    ans(i)=0;
end

shift = 0;

for i=m:-1:1
    ii = total - shift;
    for j=n:-1:1
        mul = x(i) * h(j);
        ans(ii) = ans(ii)+mul;
        ii = ii-1;
    end
    shift = shift+1;
end
        
        
for i=1:1:total
    fprintf('%3d',ans(i));
end
fprintf('\n');

for i=start:1:stop
    if(i==0)
        fprintf(' ^');
    else
        fprintf('   ');
    end
end

fprintf('\n\n');
figure;
j=start;
for i=1:1:total
y(i) = j;
j=j+1;
end

stem(y,ans);
title('Convulation in Multiplication Method');