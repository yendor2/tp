#!/bin/bash

#Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1


cat -n $1
cat -b $1

for palabra in $(cat $1)
do
        palabraLimpia=$(echo $palabra | tr -d [',''.'':'';'])
        [[ $palabraLimpia =~ ^[A-Z] ]] && echo $palabraLimpia 
done

