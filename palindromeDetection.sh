#!/bin/bash

function palindromos {

	source revertir.sh

	TEXTO=$1

	echo "Palabras palindromos de $TEXTO"


	CAT=$(cat $TEXTO | tr [:upper:] [:lower:] | sed 'y/üéáíóú/ueaiou/')

	for i in $CAT
	do
		#echo ${i:0:2}

		mitad=$((${#i}/2))
		mitadMas1=$((mitad+1))
		longitud=${#i}
		
		PrimeraMitad=${i:0:$mitad}
		#SegundaMitad=${i:$mitadMas1:$longitud}
		PrimeraAlReves=$(revertir $PrimeraMitad)

		if [ $(($longitud%2)) -eq 0 ]
		then
			SegundaMitadPar=${i:$mitad:$longitud}

			#echo "Palabra: $i"
			#echo "Primera Mitad: $PrimeraMitad"
			#echo "Segunda Mitad: $SegundaMitadPar"
			#echo -e "PrimeraAlReve: $PrimeraAlReves \n"

			if [ $SegundaMitadPar = $PrimeraAlReves ]
			then
				echo $i
			fi
		
		elif [ $(($longitud%2)) -gt 0 ]
		then
			SegundaMitadImpar=${i:$mitadMas1:$longitud}
			
			#echo "Palabra: $i"
			#echo "Primera Mitad: $PrimeraMitad"
			#echo "Segunda Mitad: $SegundaMitadImpar"
			#echo -e "PrimeraAlR: $PrimeraAlReves \n"

			if [ $SegundaMitadImpar = $PrimeraAlReves ]
			then
				echo $i
			fi
		else
			echo "Error"
		fi

	done

}

palindromos $1
