#!/bin/bash

#Contador de líneas en blanco.

function blankLinesCounter {

   [ ! -f $1 ] && echo "Archivo no encontrado" && exit 1


   totalLineas=$(cat $1 | wc -l)
   lineasSinBlanco=$(cat  $1 | grep . | wc -l)

   cantLineasBlanco=$((totalLineas-lineasSinBlanco))

   echo La cantidad de lineas en blanco es $cantLineasBlanco
}
