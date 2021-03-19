!/bin/bash

# 计算(2+3)x4的值

# 使用第一种写法
RES1=$(((2+3)*4))
echo "res1=$RES1"

#使用第二种写法,推荐使用这种方法
RES2=$[(2+3)*4]
echo "res2=$RES2"

#第三种方法
TMP=`expr  2 + 3 `
RES3=`expr $TMP \* 4`
echo "temp=$TMP"
echo "res3=$RES3" 


#请求出命令行的两个参数【整数】的和  20  50
SUM=$[$1+$2]
echo "sum=$SUM"

