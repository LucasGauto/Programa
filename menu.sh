#!/bin/bash

source funcionPrueba.sh
source statsWords.sh
source statsUsageWords.sh
source findNames.sh
source blankLinesCounter.sh

TEXTO=$1

OP2='Indicador estadistico de longitud de palabras'
OP3="Indicador estadistico de uso de palabras. 10 mas usadas"
OP4="Identificacion de nombres propios"
OP5="Indicador estadistico de longitud de oraciones"
OP6="Contador de lineas en blanco"
OP7="Invertir minusculas a mayusculas, y viceversa, de todas las palabras"
OP8="Remplazo de subcadenas"
OP9="Seleccion de oracin y/o parrafo en base a un numero de entrada"
OP10="Mostrar palabras palindromos"

PS3='>>'
echo "Bienvenido"
echo "Que desea hacer?"

newIFS=$IFS
IFS=$'\n'

select opcion in "SALIR" $OP2 $OP3 $OP4 $OP5 $OP6 $OP7 $OP8 $OP9 $OP10
do
       	[ -e $opcion ] && echo "Elegir opcion valida!" && continue
	
	if [ $REPLY == 1 ]
	then
		echo "Hasta luego"
		break
	else
		IFS=$newIFS
		unset newIFS

		echo "Opcion elegida: $opcion"
		case $REPLY in
			2)
				echo "statsWORDS"
				statsWords $TEXTO
				continue
				exit 0
				;;
			3)
				echo "statsUsageWords"
				statsUsageWords $TEXTO
				continue
				exit 0
				;;
			4)
				echo "findNames"
				findNames $TEXTO
				continue
				exit 0
				;;
			5)
				echo "statsSentences"
				continue
				exit 0
				;;
			6)
				echo "blankLinesCounter"
				blankLinesCounter $TEXTO
				continue
				exit 0
				;;
			7)
				echo "caseConverter"
				continue
				exit 0
				;;
			8)
				echo "substringReplace"
				continue
				exit 0
				;;
			9)
				echo "blockSelection"
				continue
				exit 0
				;;
			10)
				echo "palindromeDetection"
				continue
				exit 0
				;;
		esac
	fi
done

#IFS=$newIFS
#unset newIFS

exit 0
