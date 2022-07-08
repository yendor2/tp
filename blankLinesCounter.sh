#!/bin/bash

#Contador de líneas en blanco.

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1


totalLineas=$(cat $1 | wc -l)
lineasSinBlanco=$(cat  $1 | grep . | wc -l)

cantLineasBlanco=$((totalLineas-lineasSinBlanco))

echo La cantidad de lineas en blanco es $cantLineasBlanco
