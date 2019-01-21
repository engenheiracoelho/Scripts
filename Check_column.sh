
#!/bin/bash
#exemplo
VAR='GaPj04_01.txt'

if echo "$VAR" | egrep 'Co' >/dev/null
then
	value='1'
	echo "$value"
else
	value='2'
	echo "$value"
fi
