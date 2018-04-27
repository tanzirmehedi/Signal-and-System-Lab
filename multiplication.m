clear all;
close all;
clc;
%input signal 1
n1=input('Enter the element number of first signal: ');
for i=1:1:n1
y1(i)=input('Data Element: ');
end
m1=input('Enter the position of zero index: ');
p1=1-m1; %for create begin index signal 1
q1=p1;   %q1 hold the begin index signal 1
for i=1:1:n1
x1(i)=p1;  %x1(i) hold the all index sequentially
p1=p1+1;
end
subplot(3,1,1);
stem(x1,y1);
xlabel('Time->');
ylabel('Amplitude->');
title('First Signal');
%input signal 2
n2=input('Enter the element number of second signal: ');
for i=1:1:n2
y2(i)=input('Data Element: ');
end

m2=input('Enter the position of zero index: ');

p2=1-m2;  %for create begin index signal 2
q2=p2;    %q2 hold the begin index signal 2
for i=1:1:n2
x2(i)=p2; %x2(i) hold the all index sequentially
p2=p2+1;
end
subplot(3,1,2);
stem(x2,y2);
xlabel('Time->');
ylabel('Amplitude->');
title('Second Signal');
if q1<q2
    q3=q1;%q3 hold the lowest index
elseif q2<q1
    q3=q2;%q3 hold the lowest index
else
    q3=q1;
end
p1=p1-1; %for correct value of p1
p2=p2-1;  %for correct value of p2
if p1>p2
    p3=p1;%p3 hold the maximum index
elseif p2>p1
    p3=p2; %p3 hold the maximum index
else 
    p3=p1;
end
j=1;%y2 has at least one value 
k=1;%y1 has at least one value 
 for i=1:1:n1+n2-1  
     if (q3==p3+1)%if maximam index in left ,impossible
         break;
     elseif ((q1==q2) && (k<=n1 && j<=n2))
        x3(i)=q3;%x3(i) hold the lowest index of the final signal
        y3(i)=y1(k)*y2(j);%y3(i) hold the final result of multiplication
        q3=q3+1;
        j=j+1;
        k=k+1;
        q1=q1+1;
        q2=q2+1; 
        
     elseif ((q1==q2) && (k<=n1 && j>=n2))%if 2nd signal has 1 value
        x3(i)=q3;
        y3(i)=0;
        q3=q3+1;
        k=k+1;
        q1=q1+1;
        
     elseif ((q1==q2) && (k>=n1 && j<=n2))%if 1st signal has 1 value
        x3(i)=q3;
        y3(i)=0;
        q3=q3+1;
        j=j+1;
        q2=q2+1;
        
     elseif ((q1<q2)&&(k>=n1)) %if 1st signal has 1 value
            x3(i)=q3;
            y3(i)=0;
            q3=q3+1;
            j=j+1;
            q2=q2+1;
        
     elseif (q1<q2) 
            x3(i)=q3;
            y3(i)=0;
            q3=q3+1;
            k=k+1;
            q1=q1+1;
            
     elseif  ((q2<q1) && (j>=n2))%if 2nd signal has 1 value
            x3(i)=q3;
            y3(i)=0;
            q3=q3+1;
            k=k+1;
            q1=q1+1;
           
     elseif  (q2<q1)
            x3(i)=q3;
            y3(i)=0;
            q3=q3+1;
            j=j+1;
            q2=q2+1;
        end
 end
subplot(3,1,3);
stem(x3,y3);
xlabel('Time->');
ylabel('Amplitude->');
title('Final multiplication signal');

