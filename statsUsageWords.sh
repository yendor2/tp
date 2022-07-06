#!/bin/bash

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1

COUNT=0
ALMACENAR=false
declare -A repetidas

while IFS= read -r line
do
LEN_LINEA=${#line}
  for ((i=0; i<$LEN_LINEA; i++))
  do
  CARACTER=${line:i:1}
  COUNT=$((COUNT+1))
  [[ $CARACTER =~ [' '] ]] && COUNT=0 && [[ $ALMACENAR = true ]] && palabras=("${palabras[@]}" $PALABRA) && ALMACENAR=false


  [[ $COUNT -ge 1 ]] && [[ ! $CARACTER =~ [',''.'] ]] && PALABRA=${PALABRA}$CARACTER 
  [[ $CARACTER =~ ' ' ]] && PALABRA=""
  [[ $COUNT -ge 4 ]] && ALMACENAR=true
# [[ $COUNT -ge 4 ]] && TAMANIO=$((COUNT-1)) && tamanioPalabras=("${tamanioPalabras[@]}" $TAMANIO)
 # [[ $CARACTER =~ [' '',''.'] ]] && [[ $ISPALABRA = true ]] && ISPALABRA=false && echo $PALABRA  && PALABRA=""
 # [[ $CARACTER =~ [A-Z] ]] && ISPALABRA=true && PALABRA=$CARACTER
 # [[ $CARACTER =~ [a-z] ]] && [[ $ISUPPER = true ]] && PALABRA=${PALABRA}$CARACTER

 
 done
done < $1
echo palabras "${palabras[@]}"

for palabra1 in "${palabras[@]}"
do
  for palabra2 in "${palabras[@]}"
  do
    if [[ $palabra1 = $palabra2 ]] 
    then
    echo antes ${repetidas[$palabra1]}
    repetidas[$palabra1]=expr ${repetidas[palabra1]} + 1
    echo $((repetidas[palabra1]))
    repetidas[$palabra1]=$((repetidas[palabra1] + 1))
    echo despues ${repetidas[$palabra1]}
    fi
  done
done


#CANTIDAD=${#tamanioPalabras[@]}
#PROMEDIO=$((SUMA/CANTIDAD))

#echo tamanio "${tamanioPalabras[@]}"
echo repetidas ${repetidas[@]}
#echo El minimo es $MIN y se repitio "${repetidas[$MIN]}" veces
#echo El maximo es $MAX y se repitio "${repetidas[$MAX]}" veces
#echo El promedio total es $PROMEDIO
