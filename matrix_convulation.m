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

ii=1;
for i=1:1:m-1
    hh(ii)=0;
    ii=ii+1;
end
for i=1:1:n
    hh(ii)=h(i);
    ii=ii+1;
end
for i=1:1:m-1
    hh(ii)=0;
    ii=ii+1;
end

st = m;
ed = 1;

for ii=1:1:total
    in=1;
    for i=st:-1:ed
        tmp(in)=hh(i);
        in=in+1;
    end
    st=st+1;
    ed=ed+1;
    
    for i=1:1:m
        mul = x(i) * tmp(i);
        ans(ii) = ans(ii)+mul;
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
title('Convulation in Matrix Method');