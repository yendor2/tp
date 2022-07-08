#!/bin/bash

#Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1

cat $1 | grep -o [A-Za-z][A-Za-z][A-Za-z][A-Za-z]'[A-Za-z]'* | sort | uniq -ci | sort -r | head -n 10

