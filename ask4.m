% ��� ��� ��������� ��������� ���� ���� ����
% ���������� ���� ��� ������� tf2ss(���������,������������)
b = 32;
a = [1 2 10 0];
[A,B,C,D] = tf2ss(b,a);

% ������ �� �������������� ��������� ���� ������� � ��� �
Aa = [2 -10  0 0; 1 0 0 0;0 1 0 0;0 0 -32 0];
Ba= [1;0;0;0];

% ��� ���������<10sec ��� Ts<1sec 
% ���� �������� ��� ���������� 
% ����������� ����� ������ -7 +-j7.14
p1 = -7 + 7.14j;
p2 = -7 - 7.14j;

% ��� 3� ���� �� ��� ������������� ������
% �������� ���������� �� ��� ������ 2 ������
% ��� �� ��� ��������� �� �������
p3 = -20;

% ���� � ������� � ����� 4�4,��� �����������
% ��� 4� ���� ������ ��� �������� ��� �� ���
% ���������
p4 = -40;
K = place(Aa,Ba,[p1 p2 p3 p4]);
Kz = K(4);
K = K(1:3);

% ��� �� ����� � ����������� ��� �������� ���
% ��� ������� �� ������� ���� ������ ��� 5 �����
% ��� �������� ��� ���� ������ ��� �������
% ��������� �� ����� ��� ����������
L = acker(A',C',5*[p1 p2 p3 ])';