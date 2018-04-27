clear all;
close all;
clc;
n=input('Enter the number of first signal: ');
for i=1:1:n
     a(i)=input('Number: ');
end

p=input('Enter the postion of zero index: ');
upper1=1-p;
lower1=n-p;

n=input('Enter the number of secound signal: ');
for i=1:1:n
     b(i)=input('Number: ');
end
p=input('Enter the postion of zero index: ');
upper2=1-p;
lower2=n-p;

minlower=min(upper1,upper2)
maxupper=max(lower1,lower2)

j=1;
for i=minlower:maxupper
    if(i<upper1)
        first(j)=0;
    end      
           if(i>lower1)
               first(j)=0;
           end
    
    if(i>=upper1 && i<=lower1)
        first(j)= a(i-upper1+1);
    end
           if(i<upper2)
               secound(j)=0;
           end
    if(i>lower2) secound(j)=0;
    end
    
    if(i>=upper2 && i<=lower2) 
        secound(j)=b(i-upper2+1);
    end
    j=j+1;
end

first
secound

sum=first+secound
sub=first-secound
mult=first.*secound



l=length(first)
ict=1-l;
for i=1:1:l
    level(i)=ict;
    ict=ict+1;
end

subplot(3,1,1);
stem(level,sum);
xlabel('Time->');
ylabel('Amplitude->');
title('Summation of 2 signals');

subplot(3,1,2);
stem(level,sub);
xlabel('Time->');
ylabel('Amplitude->');
title('Substraction of 2nd signals');

subplot(3,1,3);
stem(level,mult);
xlabel('Time->');
ylabel('Amplitude->');
title('Multiplication of 2 signals');



