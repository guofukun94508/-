function r = GreyUniR(x,y)
%��������x,y�Ļ�ɫ��һ������
%�����﷨ r = GreyUniR(x,y)
xsize = size(x);
ysize = size(y);
if (min(xsize)~=1)||(min(ysize)~=1)
    errordlg('x��y������������');
    return
end
if xsize(2) == 1 %�������Ļ�ת����������
    x=x';    
end
if ysize(2) == 1
    y=y';    
end
xyminmax = minmax([x;y]);
x = (x-xyminmax(1,1))/(xyminmax(1,2)-xyminmax(1,1));%��һ��
y = (y-xyminmax(2,1))/(xyminmax(2,2)-xyminmax(2,1));
r = GreyAbsR(x,y);
