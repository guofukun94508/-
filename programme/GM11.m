function pre = GM11(x)
%x,��ģ��������x = [x(1),x(2),...,x(n)]
% pre,��GM11ģ�͵õ���Ԥ��ֵ������x���Ƴ���x(n+1)
n = length(x);
x1 = cumsum(x);
z1 = (x1(1:n-1)+x1(2:n))/2;
Y = x(2:length(x))';
B = [-z1',ones(n-1,1)];
A = (B'*B)\B'*Y;%GM(1,1)ģ�͵�a,b������ɵ�����.
beta = A(2)/(1+.5*A(1));
alpha = A(1)/(1+.5*A(1));
%��ʼ����x0(k)ģ������ʱ��t�仯������
f = @(t)(beta-(alpha)*x(1))*exp(-(A(1)*(t-2)));
pre = f(n+1);