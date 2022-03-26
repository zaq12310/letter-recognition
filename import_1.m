%图像预处理
%导入数据集
n=73;
x=cell(1,n);   %建立一个空元胞数组，1行73个元素 每个元素代表一个图片

for i=1:n
imgpath=strcat('E:\计算智能作业\第三次作业\letter-recognition\图像\',num2str(i),'.jpg');
x{i}=imread(imgpath);       
%导入图片
thresh = graythresh(x{i});   
%自动确定二值化阈值
x{i} = im2bw(x{i},thresh);       %对图像二值化
end

x=cell2mat(x);       %元胞数组转化为矩阵
x=reshape(x,784,n);      %转换为样本集 将x重构成一个784×73数组

x=im2double(x);          %归一化处理

d=importdata('E:\计算智能作业\第三次作业\letter-recognition\期望输出.xlsx');  
%导入期望输出
save data1.mat x d;   % x d都是生成的数据矩阵