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

for i=n+1:1:total
    h(i)=0;
end
for i=m+1:1:total
    x(i)=0;
end

for i=1:1:total
    fprintf('%d ',x(i));
end
fprintf('\n\n');
for i=1:1:total
    fprintf('%d ',h(i));
end
fprintf('\n\n');

for i=1:1:total
    for j=1:1:total
        xh(i,j) = x(i) * h(j);
    end
end

for i=1:1:total
    for j=1:1:total
       fprintf('%d ',xh(i,j));
    end
fprintf('\n');
end

fprintf('\n\n');
for i=1:1:total
    ans(i)=0;
end

for stp=1:1:total
    j=1;
    for i=stp:-1:1
        ans(stp) = ans(stp) + xh(i,j);
        j=j+1;
    end
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
title('Convulation in Tabular Method');