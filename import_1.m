%ͼ��Ԥ����
%�������ݼ�
n=73;
x=cell(1,n);   %����һ����Ԫ�����飬1��73��Ԫ�� ÿ��Ԫ�ش���һ��ͼƬ

for i=1:n
imgpath=strcat('E:\����������ҵ\��������ҵ\letter-recognition\ͼ��\',num2str(i),'.jpg');
x{i}=imread(imgpath);       
%����ͼƬ
thresh = graythresh(x{i});   
%�Զ�ȷ����ֵ����ֵ
x{i} = im2bw(x{i},thresh);       %��ͼ���ֵ��
end

x=cell2mat(x);       %Ԫ������ת��Ϊ����
x=reshape(x,784,n);      %ת��Ϊ������ ��x�ع���һ��784��73����

x=im2double(x);          %��һ������

d=importdata('E:\����������ҵ\��������ҵ\letter-recognition\�������.xlsx');  
%�����������
save data1.mat x d;   % x d�������ɵ����ݾ���