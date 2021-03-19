#!/bin/bash
# 预定义变量
# $$  表示当前执行的进程的PID

echo "当前执行进程的pid=$$"

# $! 表示执行的最后一个进程的进程号
# 后台执行脚本 在后面加上&

/Users/jolly/Learning/Shell/hello.sh &
echo "最后一个执行的进程的PID=$!"


echo "执行的结果是=$?"

