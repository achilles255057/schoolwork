%%班級:航太一甲
%%學號:D0849523
%%姓名:詹智皓

% 建立陣列
clc;
clear;
close all;
num=[05,27,29,36,40,42,35];
in=[];
x=0;
y=0;
% user input
for i=1:6
    inc=input('請輸入本期的開獎號(一次一個)：');
    in(end+1)=inc;
end
in(7)=input('請輸入特別獎號碼:');

% count 

if in(7)==35
    y=1;
else
    y=0;
end
for j=1:6
    for k=1:6
        if num(j)==in(k)
            x=x+1;
        end
    end
end
% start
if x==6
    sprintf("恭喜您中頭獎!!")

elseif (x == 5) && (y == 1)
    sprintf("恭喜您中貳獎!!")

elseif (x == 5) && (y == 0)
    sprintf("恭喜您中參獎!!")

elseif (x == 4) && (y == 1)
    sprintf("恭喜您中肆獎!!")

elseif (x == 4) && (y == 0)
    sprintf("恭喜您中伍獎!!")

elseif (x == 3) && (y == 1)
    sprintf("恭喜您中陸獎!!")

elseif (x == 2) && (y == 1)
    sprintf("恭喜您中柒獎!!")

elseif (x == 3) && (y == 0)
    sprintf("恭喜您中普獎!!")

elseif (x <3 )
    sprintf("恭喜你沒中獎哈哈哈哈哈哈哈哈哈哈哈哈")
end
