#!/bin/bash
archivo=$1
if [[ -e $archivo ]]
then
	for i in $(cat $archivo)
	do
		echo $i
	done
else
	echo error
fi

