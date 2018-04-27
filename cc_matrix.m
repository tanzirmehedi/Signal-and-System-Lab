clc;
clear all;
close all;

m = input ('Input the length x(n) : ');
for i=1:1:m
    fprintf('Values of x(%d): ',i);
    x(i)=input('');
end
xzero = input ('Zero index of x(n) : ');

n = input ('Input the length of y(n) : ');
for i=1:1:n
    fprintf('Values of y(%d): ',i);
    y(i)=input('');
end
yzero = input ('Zero index of y(n) : ');

for i=1:1:n
    yy(i)=y(n-i+1);
end
yzero = n-yzero+1;

for i=1:1:n
    fprintf('%d ',yy(i));
end
fprintf('\n');


total = n+m-1;
start = -yzero -xzero+2;
stop = total + start - 1;
 
fprintf('Total values: %d\n',total);
fprintf('Start Index: %d\n',start);
fprintf('Stop Index: %d\n',stop);
   
for i=m+1:1:total
    x(i)=0;
end 
for i=n+1:1:total
    yy(i)=0;
end

for i=1:1:total
  fprintf('%d ',x(i));
end
fprintf('\n\n');
for i=1:1:total
    fprintf('%d ',yy(i));
end
fprintf('\n\n');
for i=1:1:total
    ans(i)=0;
end
ii=1;
for i=1:1:m-1
    xx(ii)=0;
    ii=ii+1;
end
for i=1:1:n
    xx(ii)=x(i);
    ii=ii+1;
end
for i=1:1:m-1
    xx(ii)=0;
    ii=ii+1;
end

st = m;
ed = 1;

for ii=1:1:total
    in=1;
    for i=st:-1:ed
        tmp(in)=xx(i);
        in=in+1;
    end
    st=st+1;
    ed=ed+1;
    
    for i=1:1:m
        mul = yy(i) * tmp(i);
        ans(ii) = ans(ii)+mul;
    end
end

for i=1:1:total
    fprintf('%3d',ans(i));
end
fprintf('\n');
for i=start:1:stop
    if(i==0)
        fprintf('  ^');
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
title('Cross Correlation in Matrix Method');
