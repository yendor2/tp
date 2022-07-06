#!/bin/bash

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1

ISUPPER=false
COUNT=0

while IFS= read -r line
do
LEN_LINEA=${#line}
  for ((i=0; i<$LEN_LINEA; i++))
  do
  CARACTER=${line:i:1}
  COUNT=$((COUNT+1))
  [[ $CARACTER =~ ['.'] ]] && TAMANIO=$((COUNT-1)) && oraciones=("${oraciones[@]}" $TAMANIO) && COUNT=0
  done
done < $1

SUMA=0
MIN=${oraciones[0]}
MAX=${oraciones[0]}

for i in "${oraciones[@]}"
do
  SUMA=$((i+SUMA))
  [ $i -lt $MIN ] && MIN=$i
  [ $i -gt $MAX ] && MAX=$i
  repetidas[$i]=$((repetidas[i]+1)) 
done

CANTIDAD=${#oraciones[@]}
PROMEDIO=$((SUMA/CANTIDAD))

echo El minimo es $MIN y se repitio "${repetidas[$MIN]}" veces
echo El maximo es $MAX y se repitio "${repetidas[$MAX]}" veces
echo El promedio total es $PROMEDIO
