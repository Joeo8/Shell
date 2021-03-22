/bin/bash

# 案例 判断出入的参数，如果大于等于60则显示及格，如果小于60则输出不及格

if [ $1 -ge 60 ]
then echo "成绩合格"
elif [ $1  -lt 60 ]
then echo "成绩不合格"
fi

