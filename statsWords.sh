  GNU nano 4.8                                                                                  statsWords.sh                                                                                              
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
  
  [[ $CARACTER =~ [' '] ]] && tamanioPalabras=("${tamanioPalabras[@]}" $COUNT_LETRAS) && COUNT_LETRAS=0
  [[ ! $CARACTER =~ [',''.'' '] ]] && COUNT_LETRAS=$((COUNT_LETRAS+1))
  done
[[ COUNT_LETRAS -ne 0 ]] && tamanioPalabras=("${tamanioPalabras[@]}" $COUNT_LETRAS) && COUNT_LETRAS=0
done < $1

echo tamanioPalabras ${tamanioPalabras[@]}

SUMA=0
MIN=${tamanioPalabras[0]}
MAX=${tamanioPalabras[0]}

for i in "${tamanioPalabras[@]}"
do
  SUMA=$((i+SUMA))
  [ $i -lt $MIN ] && MIN=$i
  [ $i -gt $MAX ] && MAX=$i
done

CANTIDAD=${#tamanioPalabras[@]}
PROMEDIO=$((SUMA/CANTIDAD))

echo La palabra mas corta tiene $MIN caracteres
echo La palabra mas larga tiene $MAX caracteres 
echo El promedio de las longitudes es $PROMEDIO
