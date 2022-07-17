#!/bin/bash

#filtrar por las que tienen al menos 4 letras

contador=0

for palabra in $(cat $1 | sort | uniq)
do
	if [ $contador -eq 0 ]
	then
	#filtro
		if [ ${#palabra} -ge 4 ]
		then
			for palabra2 in $(cat $1)
			do
				if [[ $palabra = $palabra2 ]]
				then
					contador=$((contador+1))
				else
					continue
				fi
			
				#echo "$contador - $palabra"			
			done
			echo "$contador - $palabra" >> statsUsageWords.txt
		fi
	else
		contador=0
	fi
done

cat statsUsageWords.txt | sort | uniq
echo "otrooooooooooooooooooooooooooooo\n"

for i in $(seq 1 10)
do
	for palabra in $(cat statsUsageWords.txt | sort | uniq | grep ^"$i")
	do
		palabras+="${palabra} "
	done

	echo $palabras
done

rm statsUsageWords.txt
