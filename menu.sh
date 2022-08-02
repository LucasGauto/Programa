#!/bin/bash

source funcionPrueba.sh
source statsWords.sh
source statsUsageWords.sh
source findNames.sh
source statsSentences.sh
source blankLinesCounter.sh
source caseConverter.sh
source blockSelection.sh

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

n=$((0))

select opcion in "SALIR" $OP2 $OP3 $OP4 $OP5 $OP6 $OP7 $OP8 $OP9 $OP10
do
	n=$((n+1))
	
	if [ $n -eq 1 ]
	then
		
		IFS=$newIFS
	       	unset newIFS
       	fi
       
	#hasta aca todo bien. Ahora...

       #if [ -e $opcion ]
       #then
#		echo "Elegir opcion valida!"
#		continue
#	else
		
	if [ $REPLY = 1 ]
	then
		echo "Hasta luego"
		break
	else
		echo "Opcion elegida: $opcion"
		
		case $REPLY in
			2)
				echo "statsWORDS"
				statsWords $TEXTO
				
				#IFS=$newIFS
				#unset newIFS

				continue
				exit 0
				;;
			3)
				#IFS=$newIFS
				#unset newIFS

				echo "statsUsageWords"
				statsUsageWords $TEXTO
				
				#newIFS=$IFS
				#IFS=$'\n'

				continue
				exit 0
				;;
			4)
				#IFS=$newIFS
				#unset newIFS

				echo "findNames"
				findNames $TEXTO
				
				#newIFS=$IFS
				#IFS=$'\n'
				
				continue
				exit 0
				;;
			5)
				echo "statsSentences"
				statsSentences $TEXTO
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
				caseConverter $1
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
				blockSelection $TEXTO
				continue
				exit 0
				;;
			10)
				echo "palindromeDetection"
				continue
				exit 0
				;;
			*)
				echo "Elegir opcion valida!!"
				continue

		esac
		fi
#       fi
done

exit 0
