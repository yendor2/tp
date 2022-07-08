#!/bin/bash

source statsWords.sh
source statsUsageWords.sh
source findNames.sh
source statsSentences.sh
source blankLinesCounter.sh

PATH_ARCHIVO=texto.txt

PS3='=> '
echo "Elija una opcion"
select opcion in "SALIR" "Estadisticas_de_palabras" "Estadisticas_de_uso_de_palabras" "Encontrar_nombres" "Estadisticas_de_oraciones" "Contador_de_lineas_en_blanco"
do
	[ -z $opcion ] && echo "Elija una opcion valida" && continue
	[ $REPLY == 1 ] && echo "Saliendo.." && break
	echo "Opcion elegida: " $opcion
	
	case $REPLY in 
	  2) statsWords $PATH_ARCHIVO;;
	  3) statsUsageWords $PATH_ARCHIVO;;
	  4) findNames $PATH_ARCHIVO;;
	  5) statsSentences $PATH_ARCHIVO;;
	  6) blankLinesCounter $PATH_ARCHIVO;;
	esac
done

exit 0
