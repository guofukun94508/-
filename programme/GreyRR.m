function r = GreyRR(x,y)
%��������x,y�Ļ�ɫ��Թ����ȣ�Ҫ������е�һ��Ԫ�ز���Ϊ0
%�����﷨ r = GreyRR(x,y)
if ~(x(1)&&y(1))
    errordlg('������Ԫ��Ϊ0����Ϊ0��')
    return
end
x = x/x(1);
y = y/y(1);
r = GreyAbsR(x,y);
