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

	

