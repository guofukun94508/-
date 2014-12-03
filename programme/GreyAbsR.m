function r = GreyAbsR(x,y)
%��������x,y�Ļ�ɫ���Թ�����
%�����﷨ r = GreyAbsr(x,y)
if length(x) ~= length(y)
    errordlg('�����г��Ȳ��ȣ�')
    return
end
x0 = x-x(1);
y0 = y-y(1);
z0 = y0-x0;
s0 = abs( sum( x0(2:end-1) )+0.5*x0(end) );
s1 = abs( sum( y0(2:end-1) )+0.5*y0(end) );
s10 = abs( sum( z0(2:end-1) )+0.5*z0(end) );
s = 1+s0+s1;
r = s/(s+s10);