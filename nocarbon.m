clear
clc
tic
%���Ŷ���
%�����½��ĸ߶�h
%������ת���Ƕ�sd2
%�����ᴫ����ii
%ת�������ľ�b
%ת��˵ĳ�c
%ת����ת���ĽǶ�af
%�����ְ뾶R
%������A��ת���ֺ���ƫ��a1
%������B��ת���ֺ���ƫ��a2
%��������ת���ֵľ���d
%С����ʻ��·��s
%С��x�����λ��x
%С��y�����λ��y
%�켣���ʰ뾶rou
%�����뾶r1
%���ְ뾶r2
%��������
n=10000;
h=linspace(0,0.14,n);

ii=3.239819135;
b=150;
R=100;%�ְ뾶
%������A��ת���ֺ���ƫ��a1
a1=80;
%������B��ת���ֺ���ƫ��a2
a2=80;
%�����뾶r1
r1=17;
%���ְ뾶r2
r2=6;
%��������ת���ֵľ���d
d=180;
%ת��˵ĳ�c
c=29.51190755;

l=sqrt(b^2+r1^2)+(1.841);

b=b/1000;
r1=r1/1000;
l=l/1000;
 
R=R/1000;
a1=a1/1000;
a2=a2/1000;
r2=r2/1000;
d=d/1000;
c=c/1000;

%�㷨
g=-10;
sd2=h/r2;
sd1=sd2/ii+pi/2;
C=l^2-2*c^2-r1^2.*(cos(sd1)).^2-(b-r1.*sin(sd1)).^2;
A=2.*c.*(b-r1.*sin(sd1));
B=-2*c^2;
af=asin(C./sqrt(A.^2+B.^2))-atan(B./A);
format long
rou=a1+(d)./(tan(af));
s=sd2*R;
ds=s(2)-s(1);
dbd=ds./(rou);
bd=cumsum(dbd);
dy=ds*cos(bd);
dx=-ds*sin(bd);
x=cumsum(dx);
y=cumsum(dy);
xb=x-(a1+a2).*cos(bd);
yb=y-(a1+a2).*sin(bd);
xc=x-a1*cos(bd)-d*sin(bd);
yc=y-a1*sin(bd)+d*cos(bd);
[Ax,anumb]=min(x);
Ty=y(anumb);
Ax=-1000*Ax;
Ty=Ty*1000;
% 
% dAcar=Acar-Ax
% dTcar=Tcar-Ty

   plot(x,y,'b',xb,yb,'b',xc,yc,'m');
 %  hold on
    grid on
%     for i=1:9
%     t=0:0.01:2*pi;
%     xy=0.01.*cos(t)-0.23;
%     yy=0.01.*sin(t)+i;
%    plot(xy,yy);
%     hold on
%     end
% 
% af2=asin(c*(1-cos(af))/l);
% figure(2)
% 
% plot(af*180/3.14159)
% 
% grid on
% figure(3)
% plot(af2*180/3.14159)
% grid on
toc