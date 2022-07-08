#!/bin/bash

#Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.

function findNames {

   [ ! -f $1 ] && echo "Archivo no encontrado" && exit 1

   for palabra in $(cat $1)
   do
        palabraLimpia=$(echo $palabra | tr -d [',''.'':'';'])
	[[ $palabraLimpia =~ ^[A-Z] ]] && echo $palabraLimpia 
   done
}
