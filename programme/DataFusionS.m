function [a,w] = DataFusionS(x)
%���ڶ�β�������Ԥ����ɵ�x�Ĺ۲�ֵ���н���ںϣ�
%xΪ��������
%����ֵ��a,�ںϽ����w��x��ÿ������������a��ʱ����ռ��Ȩ��
%���ø�ʽ[a,w] = DataFusionS(x);
Lx = length(x);
switch Lx
    case 0 
        a = 0;
        w = [];
    case 1
        a = x;
        w = 1;
    case 2
        a = mean(x);
        w = [1/2,1/2];
    otherwise
        DataCombine = nchoosek(1:length(x),2);%xԪ������֮����ܵ�������Ϸ�ʽ
        d = abs( x(DataCombine(:,1))-x(DataCombine(:,2)) );
        maxd = max(d);
        [Y,X] = meshgrid(1:Lx,1:Lx);
        R =  cos(pi*( x(X)-x(Y) )/(2*maxd)); %����֧�ֶȾ���       
        [V,D] = eig(R);
        w = V(:,Lx)/sum(V(:,Lx));
        a = x*w;
end