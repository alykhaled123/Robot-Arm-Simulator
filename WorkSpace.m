clear
clc
l1 = 4;
l2 = 3;
% l3 = 30;

q1_min = -90;
q1_max = 180;
q2_min = 0;
q2_max = 120;
% q3_min = -90;
% q3_max = 150;
t1=linspace(q1_min, q1_max, 200)*pi/180;
t2=linspace(q2_min, q2_max, 200)*pi/180;
% t3=linspace(q3_min, q3_max, 200)*pi/180;

[q1,q2]=ndgrid(t1,t2); 
xM = l1 * cos(q1) + l2 * cos(q1 + q2);
yM = l1 * sin(q1) + l2 * sin(q1 + q2);
% xM = l1 * cos(q1) + l2 * cos(q1 + q2) + l3 * cos(q1 + q2 + q3);
% yM = l1 * sin(q1) + l2 * sin(q1 + q2) + l3 * sin(q1 + q2 + q3);
x = l1 * cos(t1) + l2 * cos(t1 + t2);
y = l1 * sin(t1) + l2 * sin(t1 + t2);
plot(xM,yM,'b-')
area = 0;
d = xM(4);
for i = 1:199
    for j = 1:199
        area = area + (xM(i,j)+xM(i,j+1))*(yM(i,j+1)-yM(i,j));
    end
end
area = area/180

grid on