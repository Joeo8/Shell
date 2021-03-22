[TOC]



# Shell



##### Shell 是什么？

>  	  Shell是一个命令行解释器，他为用户提供了一种能够向Linux内核发送请求以便运行程序的界面系统级程序，用户可以使用Shell来启动、挂起、停止甚至是编写一些程序。

##### Shell 脚本的执行方式

>+ 脚本格式要求
>  + 脚本以` #！/bin/bash`开头
>  + 脚本需要可执行权限 `chomd u+x xxx.sh`
>+ 脚本的常用执行方式
>  1. 输入脚本的绝对路径或相对路径（首先要有`u+x`权限）
>  2. sh+脚本 （不用赋予脚本`u+x`的权限，直接执行即可）

##### Shell的变量

>+ Shell变量的简介
>  + shell中的变量有系统变量和用户自定义变量
>  + 系统变量：$HOME 、$PWD 、 $SHELL 、 $USER等等，  例如：`echo $HOME`
>  + 现实当前shell中的所有变量：`set`
>+ Shell变量的定义
>  + 定义变量：变量名=指（⚠️等号两边不要加空格）
>  + 撤销变量：unset 变量
>  + 声明静态变量：readonly变量（静态变量不能unset）
>+ Shell变量的定义规则
>  + 变量名称可以由字母、数字、下划线组成，但不能以数字开头
>  + 等号两侧不能有空格
>  + 变量名称习惯为大写
>+ 将命令的返回值赋给变量
>  + ```A=`date` ```反引号，运行里面的命令，并把结果返回给变量A
>  + `A=$(date)`等价于反引号

##### Shell中的注释

>+ 单行注释  #XXXX
>
>+ 多行注释  （⚠️分行写，样式如下）
>
>  ```bash
>  :<<!
>  C=`date`
>  D=$(date)
>  echo "C=$C"
>  echo "D=$D"
>  !
>  ```

##### Shell位置参数变量

>+ 简介
>
>  + 执行shell脚本时，希望获取到命令行的参数信息，此时就需要位置参数
>
>+ 基本用法
>
>  + `$n`(n表示对应的数字，`$0`表示命令本身，`$1-$9`分别对应参数位置，10以上的参数需要{}扩起来，如${10})
>  + `$*`把所有参数看作一个整体
>  + `$@`雷同`$*`都是输出所有参数，但是它会将参数区分对待
>  + `$#`表示参数的个数
>
>  ```bash
>  #!/bin/bash
>  echo "0=$0  1=$1  2=$2"
>  echo "所有的参数=$*"
>  echo "$@"
>  echo "参数的个数=$#"	
>  ```
>
>  ```bash
>  jolly@Mac-mini Shell % ./mysh.sh 10 20
>  0=./mysh.sh  1=10  2=20
>  所有的参数=10 20
>  10 20
>  参数的个数=2
>  ```

##### Shell预定义变量

>+ 基本介绍
> + 就是Shell设计者事先已经定义好的变量，可以直接在shell脚本中使用
>+ 基础语法
>  + `$$` 显示当前进程的进程号（PID）
>  + `S!` 后台执行的最后一个进程的进程号（PID）
>  + `$?` 最后一次执行的命令返回的状态（0 => 正常执行）

##### 运算符

>+ 基础语法
>  + `$((expresssion))`或 `$[expression]` 或者 `expre m + n `
>  + 注意 `expr` 运算符间要有空格，如果希望将expr的结果返回则添加``` `` ```
>  + `expr m - n`
>  + `expr \*,/,%`  乘，除，取余

```bash
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
```

```bash
jolly@Mac-mini Shell % sh oper.sh 20 50
oper.sh: line 1: !/bin/bash: No such file or directory
res1=20
res2=20
temp=5
res3=20
sum=70
```

##### Shell条件判断

>+ 基础语法
>  + `[ condition ]` （⚠️conditoin两边要加空格）
>  + 非空则返回  `true` ，可使用 `$?`验证（0=>true,>1=>false）
>
>

![](/Users/jolly/Pictures/Shell/Shell_oper.jpg)

```bash
#~!/bin/bash

#  案例一 ： ‘ok’ 是否等于 ‘ok’

	if [ " ok " = " ok " ]
	then echo  "equal"
	fi

#  案例二 ： ‘23’ 是否大于等于 ‘22’

	if [ 23 -ge 22  ]
	then echo  "true"
	fi


#  案例三 ： /Users/jolly/Learning/Shell 目录中的文件是否存在

	if [ -f /Users/jolly/Learning/Shell/hello.sh ]
	then echo "存在"
	fi
```

```bash
jolly@Mac-mini Shell % ./ifDemo.sh
equal
true
存在
```

##### Shell流程控制

>+ `if` 判断流程控制
>
>  `if [ condition ]`
>
>  ` then ` 
>
>  `  fi `

