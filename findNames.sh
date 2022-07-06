#!/bin/bash

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1

ISUPPER=false

while IFS= read -r line
do
LEN_LINEA=${#line}
  for ((i=0; i<$LEN_LINEA; i++))
  do
  CARACTER=${line:i:1}
  [[ $CARACTER =~ [' '',''.'] ]] && [[ $ISUPPER = true ]] && ISUPPER=false && echo $PALABRA && PALABRA=""
  [[ $CARACTER =~ [A-Z] ]] && ISUPPER=true && PALABRA=$CARACTER
  [[ $CARACTER =~ [a-z] ]] && [[ $ISUPPER = true ]] && PALABRA=${PALABRA}$CARACTER
  done
[[ -n PALABRA ]] && [[ $ISUPPER = true ]] && ISUPPER=false && echo $PALABRA && PALABRA=""
done < $1

