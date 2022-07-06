#!/bin/bash

#Indicador estadístico de longitud de palabras (la más corta, la más larga y elpromedio de longitud).

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1


suma=0
min=100
max=0

for palabra in $(cat $1)
do
	tamanio=$(echo $palabra | tr -d [',''.'':'';'] | wc -L)
	suma=$((tamanio+suma))
 	[ $tamanio -lt $min ] && min=$tamanio
	[ $tamanio -gt $max ] && max=$tamanio
done

cantidad=$(cat $1 | wc -w)
promedio=$((suma/cantidad))

echo La palabra mas corta tiene $min caracteres
echo La palabra mas larga tiene $max caracteres 
echo El promedio de las longitudes es $promedio

