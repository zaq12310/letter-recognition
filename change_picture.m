
%����ͬ��С��ͼ��ת����ͳһ��С�����Ҹı��ʽ
ObjDir = 'E:\����������ҵ\��������ҵ\letter-recognition\ԭʼͼ��\';%�����ı��ͼ���ַ����ΪĿ���ַ
OtpDir = 'E:\����������ҵ\��������ҵ\letter-recognition\ͼ��\';%���ͼ���ַ����Ϊ�����ַ
for i = 1:1:5202%�ҵ�ͼ������1��5202
bgFile = [ObjDir,num2str(i),'.png'];%��仰��ȡĿ���ַ����ĸ�ʽΪpng��ͼƬ
%num2str���Ȱ�����iת����stringȻ����ֱ����λ
%�ٸ����ӣ�i=13,num2str(i,'%08d)=00000013,������string
bgFile = imread(bgFile);%��ͼƬ����matlab��ʶ�ģ�����Ϊ��ͼƬ
img = imresize(bgFile,[28,28]);%������С����28����28
filename=[num2str(i),'.jpg'];%�����ͼƬ������1.jpg
path=fullfile(OtpDir,filename);%�����·��
imwrite(img,path,'jpg');%��jpg��ʽ�����ȥ
end