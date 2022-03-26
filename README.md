# letter-recognition
BP神经网络应用，字母识别
1）BP网络应用-英文字母识别

进行A,B,C,D四个字母的识别
①图像预处理
先运行change_picture.m将图片改成统一大小，统一格式
再运行import_1.m 获得样本数据集data1.mat
②神经网络（双隐含层）
运行的程序为exam3_1.mlx，学习规则为traingda
第一层隐含层的激活函数为logsig，第二层隐含层激活函数为tansig ，
输出层激活函数为purelin 
每次循环50次，最大循环500次
保存的神经网络为net.mat
其中A,B,C,D分别由列向量[1 0 0 0],[0 1 0 0],[0 0 1 0],[0 0 0 1]表示

Pred1为input所对应的初始网络预测值
![image](https://user-images.githubusercontent.com/92127845/160222023-350225c2-7eb7-434e-957d-647649049185.png)

Pred2为input所对应的训练后网络预测值
![image](https://user-images.githubusercontent.com/92127845/160222024-ae4075fd-c868-4c7d-b110-42ba91d67aba.png)

测试后获得混淆矩阵
其中1，2，3，4分别代表字母A.B.C.D，其他数字为识别错误或者说无法识别
![image](https://user-images.githubusercontent.com/92127845/160222029-02e76337-e96b-4934-b330-801863e9d986.png)

加载训练后神经网络net1.mat预测神经网络识别图片7.jpg对应的输出情况
![image](https://user-images.githubusercontent.com/92127845/160222030-4247eccf-32b4-4790-93bf-2c262b8bc3c1.png)

