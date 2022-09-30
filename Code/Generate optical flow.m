clc;
clear;
%Rawdata  1——6行3个动作原数据，7——12行3个动作加速度计的合加速度，
%13——18行周期索引，19——24行是周期数据
%%    1.读数据
path = '..\Original data\';
m=1;
for i=[01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,22]
    
str=['GaCo',num2str(i,'%02d\n')]
dataUsage = str;
aData = dir(fullfile(path,strcat('*',dataUsage,'*.txt')));         %列出当前文件夹内容,fullfile()从各个部分构建完整文件名
%读取的第一个动作a00，无负重下的8个人各三次实验，左小腿，右小腿的数据,放在Rawdata第1——6列,占前8行
for k = 1 :length(aData)
    accdata=[];
    ldata=[];
    name = aData(k).name;
    % 连接路径和文件名得到完整的文件路径
    accdata = load(strcat(path,aData(k).name));%不懂
   ldata = accdata;
    
    % 读取数据（因为这里是.txt格式数据，所以直接用load()函数)
    usersID = str2double(aData(k).name(3:3));
   
    %不懂
    Rawdata{m,k} = ldata;  
end
m=m+1;
end
 
for i=[03,04,05,06,07,08,09,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]
str=['GaPt',num2str(i,'%02d\n')];
dataUsage = str;
aData = dir(fullfile(path,strcat('*',dataUsage,'*.txt')));         %列出当前文件夹内容,fullfile()从各个部分构建完整文件名
for k = 1 :length(aData)
    accdata=[];
    ldata=[];
    name = aData(k).name;
    accdata = load(strcat(path,aData(k).name));%不懂
    ldata = accdata;
    usersID = str2double(aData(k).name(3:3));
   
    %不懂
    Rawdata{m,k} = ldata;  
end
m=m+1;
end
 
 
for i=[01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
str=['JuPt',num2str(i,'%02d\n')]
dataUsage = str;
aData = dir(fullfile(path,strcat('*',dataUsage,'*.txt')));         %列出当前文件夹内容,fullfile()从各个部分构建完整文件名
for k = 1 :length(aData)
    accdata=[];
    ldata=[];
    name = aData(k).name;
    % 连接路径和文件名得到完整的文件路径
    accdata = load(strcat(path,aData(k).name));%不懂
   ldata = accdata;
    
    % 读取数据（因为这里是.txt格式数据，所以直接用load()函数)
    usersID = str2double(aData(k).name(3:3));
   
    %不懂
    Rawdata{m,k} = ldata;  
end
m=m+1;
end
for i=[02,04,05,07,08,09,10,12,13,14,15,16,17,18,19,20,21,22,23,24,25,27,28,29,30,31,32,33,34,35,36,37,38,39,40]
str=['SiPt',num2str(i,'%02d\n')];
dataUsage = str;
aData = dir(fullfile(path,strcat('*',dataUsage,'*.txt')));         %列出当前文件夹内容,fullfile()从各个部分构建完整文件名
%读取的第一个动作a00，无负重下的8个人各三次实验，左小腿，右小腿的数据,放在Rawdata第1——6列,占前8行
for k = 1 :length(aData)
    accdata=[];
    ldata=[];
    name = aData(k).name;
    % 连接路径和文件名得到完整的文件路径
    accdata = load(strcat(path,aData(k).name));%不懂
    ldata = accdata;
    usersID = str2double(aData(k).name(3:3));
   
    %不懂
    Rawdata{m,k} = ldata;  
end
m=m+1;
end

for i=[01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]
str=['JuCo',num2str(i,'%02d\n')];
dataUsage = str;
aData = dir(fullfile(path,strcat('*',dataUsage,'*.txt')));         %列出当前文件夹内容,fullfile()从各个部分构建完整文件名
%读取的第一个动作a00，无负重下的8个人各三次实验，左小腿，右小腿的数据,放在Rawdata第1——6列,占前8行
for k = 1 :length(aData)
    accdata=[];
    ldata=[];
    name = aData(k).name;
    % 连接路径和文件名得到完整的文件路径
    accdata = load(strcat(path,aData(k).name));%不懂
   ldata = accdata;
    
    % 读取数据（因为这里是.txt格式数据，所以直接用load()函数)
    usersID = str2double(aData(k).name(3:3));
   
    %不懂
    Rawdata{m,k} = ldata;  
end
m=m+1;
end

%  
for i=[01,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
str=['SiCo',num2str(i,'%02d\n')]
dataUsage = str;
aData = dir(fullfile(path,strcat('*',dataUsage,'*.txt')));         %列出当前文件夹内容,fullfile()从各个部分构建完整文件名
%读取的第一个动作a00，无负重下的8个人各三次实验，左小腿，右小腿的数据,放在Rawdata第1——6列,占前8行
for k = 1 :length(aData)
    accdata=[];
    ldata=[];
    name = aData(k).name;
    % 连接路径和文件名得到完整的文件路径
    accdata = load(strcat(path,aData(k).name));%不懂
   ldata = accdata;
    
    % 读取数据（因为这里是.txt格式数据，所以直接用load()函数)
    usersID = str2double(aData(k).name(3:3));
   
    %不懂
    Rawdata{m,k} = ldata;  
end
m=m+1;
end
%% 

AA={};
A=Rawdata;
for i=1:166
    for j=1:7
        for jj=1:size(A{i,j},1)
                    AA{i,j}{jj,1}=[nan,A{i,j}(jj,9),nan,nan,A{i,j}(jj,17),nan;
                    A{i,j}(jj,7),nan,A{i,j}(jj,8),A{i,j}(jj,16),nan,A{i,j}(jj,15);
                    A{i,j}(jj,5),nan,A{i,j}(jj,6),A{i,j}(jj,14),nan,A{i,j}(jj,13);
                    A{i,j}(jj,3),nan,A{i,j}(jj,4),A{i,j}(jj,12),nan,A{i,j}(jj,11);
                    nan,A{i,j}(jj,2),nan,nan,A{i,j}(jj,10),nan];
        end
    end
end
%% 
CC={};
for i=1:size(AA,1)
    for i0=1:7
        CC{i,i0}=[];
        for j=1:length(AA{i,i0})
            CC{i,i0}=cat(3,CC{i,i0},AA{i,i0}{j,1});
        end
    end
end



 %% 

Czuo={};
Cyou={};
 for i=1:length(CC)
     for j=1:7
         if isempty(CC{i,j})
                Czuo{i,j}={};
                Cyou{i,j}={};
         else
                Czuo{i,j}=CC{i,j}(:,1:3,:);
                Cyou{i,j}=CC{i,j}(:,4:6,:);
         end
     end
 end
 

 
%% 
clc;
D1={};
y={};
x={};
zhi={};
for p=1:length(CC)
    for pp=1:7
        if ~isempty(CC{p,pp})
            for i=1:size(CC{p,pp},3)
                
                A=CC{p,pp}(:,:,i);
                B=reshape(A,1,30);
                [b,a]=sort(B);
                for j0=1:length(a)
                    a1(a(j0))=j0;
                end
                C=reshape(b,6,5);
                D1{p,pp}{i,1}=reshape(a1,5,6);
                D=C';
            end
            
            for i=1:length(D1{p,pp})
                for j=1:16
                    a=find(D1{p,pp}{i,1}==j);
                    y{p,pp}{i,1}(j,1)=floor(a/5)+1;
                    x{p,pp}{i,1}(j,1)=mod(a,5);
                    if x{p,pp}{i,1}(j,1)==0
                        y{p,pp}{i,1}(j,1)=y{p,pp}{i,1}(j,1)-1;
                        x{p,pp}{i,1}(j,1)=5;
                    end
                    zhi{p,pp}{i,1}(j,1)=CC{p,pp}(x{p,pp}{i,1}(j,1),y{p,pp}{i,1}(j,1),i);
                end
            end
        end
    end
end
%给出值的大小，zhi.mat代表小到大排列的值大小。
%x和y代表对应的坐标位置。zhi、x、y的尺寸都是16*1
%% 
x2={}
y2={}
zhi2={}
for p=1:length(CC)
    for pp=1:7
        if ~isempty(CC{p,pp})
            x2{p,pp}={};
            y2{p,pp}={};
            zhi2{p,pp}={};
            for i=1:length(D1{p,pp})-1
                for j=1:16
                    x2{p,pp}{i,1}(j,1)=x{p,pp}{i+1,1}(j,1)-x{p,pp}{i,1}(j,1);
                    y2{p,pp}{i,1}(j,1)=y{p,pp}{i+1,1}(j,1)-y{p,pp}{i,1}(j,1);
                    zhi2{p,pp}{i,1}(j,1)=(zhi{p,pp}{i+1,1}(j,1)-zhi{p,pp}{i,1}(j,1));
                end
            end
        end
    end
end
%% 把x2合并成xx2
xx2={};
yy2={};
for i=1:166
    for j=1:7
        if ~isempty(x2{i,j})
            xx2{i,j}=[];
            yy2{i,j}=[];
            for ii=1:length(x2{i,j})
                xx2{i,j}=[xx2{i,j};x2{i,j}{ii,1}'];
                yy2{i,j}=[yy2{i,j};y2{i,j}{ii,1}'];
            end
        end
    end
end
%% 
for i=1:166
    for j=1:7
        if ~isempty(xx2{i,j})
                xx2{i,j}=[nan(1,16);xx2{i,j}];
                yy2{i,j}=[nan(1,16);yy2{i,j}];
        end
    end
end
%% 
if isempty(Rawdata{121,1})
    Rawdata(121,:)=[];
end

if isempty(xx2{121,1})
    xx2(121,:)=[];
end

if isempty(yy2{121,1})
    yy2(121,:)=[];
end

for i=1:165
    for j=1:7
        if ~isempty(xx2{i,j})
            Rawdata{i,j}=[Rawdata{i,j},xx2{i,j}];
        end
    end
end

RawdataZ=[Rawdata(1:18,1:7);Rawdata(19:47,1:7);Rawdata(112:137,1:7);Rawdata(48:76,1:7);Rawdata(138:165,1:7);Rawdata(77:111,1:7)];
yy3=[yy2(1:18,1:7);yy2(19:47,1:7);yy2(112:137,1:7);yy2(48:76,1:7);yy2(138:165,1:7);yy2(77:111,1:7)];
Rawdata2={};
for i=1:165
    for j=1:7
        Rawdata2=[Rawdata2,RawdataZ{i,j}];
    end
end
yy4={};
for i=1:165
    for j=1:7
        yy4=[yy4,yy3{i,j}];
    end
end

%% 
path = './gait-in-parkinsons-disease-1.0.1';
aData = dir(fullfile(path,strcat('*','_','*.txt')));

%% 将matrixA保存到 *.txt 文件中
path = './gait-in-parkinsons-disease-1.0.0';
aData = dir(fullfile(path,strcat('*','_','*.txt')));
for ii=1:length(aData)
    %if ~isempty(xx2{i,j})
    name = aData(ii).name;
    fid=fopen(['./JiaHaoDeShuJu/',name],'wt');
    matrix=Rawdata2{1,ii};
    matrix2=yy4{1,ii};
    [m,n]=size(matrix);
    for i=1:1:m
        for j=1:1:n               
            if j>19
            if j==n
                fprintf(fid,'(%g,%g)\n',matrix2(i,j-19),matrix(i,j));               
            elseif matrix(i,j)<0
                if matrix2(i,j-19)>=0
                fprintf(fid,'(%g, %g)\t',matrix2(i,j-19),matrix(i,j));
                else 
                fprintf(fid,'(%g,%g)\t',matrix2(i,j-19),matrix(i,j));
                end
            elseif matrix(i,j)>=0
                if matrix2(i,j-19)>=0
                fprintf(fid,'( %g, %g)\t',matrix2(i,j-19),matrix(i,j));
                else 
                fprintf(fid,'( %g,%g)\t',matrix2(i,j-19),matrix(i,j));
                end
            end
            else
            if j==n
                fprintf(fid,'%g\n',matrix(i,j));               
            elseif matrix(i,j)<0
                fprintf(fid,'%g\t',matrix(i,j));
            elseif matrix(i,j)>=0
                fprintf(fid,'%g\t',matrix(i,j));
            end  
            end
        end
    end
    fclose(fid);
end



