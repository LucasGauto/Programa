#!/bin/bash

TEXTO=$1
TIPO=$2
POSICIOIN=$3

#compruebo si el archivo existe
if [ -e $TEXTO ]
then
	#si es oracion...
	
	if [ $TIPO = "O" ]
	then
		CAT=$(cat $TEXTO)

		newIFS=$IFS
		IFS=$'.'
		
		echo "Usted esta buscando una oracion"

		for oracion in $CAT
		do
			echo $oracion
		done

		IFS=$newIFS
		unset newIFS

	elif [ $TIPO = "P" ]
	then
		CAT=$(cat $TEXTO)
		
		newIFS=$IFS
		IFS=$'\n'
		
		echo "Usted esta buscando un parrafo"
		
		for parrafo in $CAT
		do
			echo $parrafo
		done
		
		IFS=$newIFS
		unset newIFS

	else
		echo "error en el tipo"
	fi
else
	echo "El archivo $TEXTO no existe"
fi
