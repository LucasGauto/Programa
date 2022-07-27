#!/bin/bash

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
	[ $REPLY == 1 ] && echo "Hasta luego" && break
	echo "Opcion elegida: $opcion"
done

IFS=$newIFS
unset newIFS

exit 0
