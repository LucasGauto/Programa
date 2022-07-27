#!/bin/bash

function funcion {
	TEXTO=$1
	for i in $(cat $TEXTO)
	do
		echo $i
	done
}
