#!/bin/bash

#Indicador estadístico de longitud de oraciones (la más corta, la más larga y elpromedio de longitud).

[ ! -f $1 ] && echo "Ingrese la ubicacion correcta del archivo de texto a analizar" && exit 1

countLetras=0
countOraciones=0
minLongitud=1000
maxLongitud=0
sumaLongitud=0

for palabra in $(cat $1)
do
         [[ ! $palabra =~ ['.']$ ]] && countLetras=$(($(echo $palabra | wc -m)-1+countLetras)) 
        
	 if [[ $palabra =~ ['.']$ ]]
	 then
		 countLetras=$(($(echo $palabra | wc -m)-2+countLetras))
		 [[ $countLetras -lt $minLongitud ]] && minLongitud=$countLetras
                 [[ $countLetras -gt $maxLongitud ]] && maxLongitud=$countLetras
	 	 countOraciones=$((countOraciones+1))
                 sumaLongitud=$((countLetras+sumaLongitud))
	  	 countLetras=0
         fi 
done

echo La oracion mas corta tiene $minLongitud letras
echo La oracion mas larga tiene $maxLongitud letras
echo El promedio de longitud de oraciones es $((sumaLongitud/countOraciones))
