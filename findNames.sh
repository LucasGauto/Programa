#!/bin/bash

TEXTO=$1

echo -e "Lista de nombres: \n"


for i in $(cat $TEXTO)
do
	I=$i
	echo $i | grep ^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]
done


