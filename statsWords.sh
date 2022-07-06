  GNU nano 4.8                                                                                  statsWords.sh                                                                                              
#!/bin/bash

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1


suma=0
min=100
max=0

for palabra in $(cat $1)
do
	echo $palabra
	tamanio=$(echo $palabra | tr -d [',''.'':'';'] | wc -L)
	echo $tamanio
	suma=$((tamanio+suma))
 	[ $tamanio -lt $min ] && min=$tamanio
	[ $tamanio -gt $max ] && max=$tamanio
done

cantidad=$(cat $1 | wc -w)
promedio=$((suma/cantidad))

echo cantidad $cantidad
echo suma $suma
echo promedio $promedio
echo La palabra mas corta tiene $min caracteres
echo La palabra mas larga tiene $max caracteres 
echo El promedio de las longitudes es $promedio

