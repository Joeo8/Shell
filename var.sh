#!/bin/bash

#定义变量A
A=100
echo A=$A

#撤销变量A
unset A
echo "A=$A"

#声明静态变量B=2
readonly B=2
echo "B=$B"

#将命令返回的结果赋值给变量
C=`date`
D=$(date)
echo "C=$C"
echo "D=$D"
