#!/bin/bash

PS3='=> '
echo "Elija una opcion"
select opcion in "SALIR" "Estadisticas_de_palabras" "Estadisticas_de_uso_de_palabras" "Encontrar_nombres" "Estadisticas_de_oraciones" "Contador_de_lineas_en_blanco"
do
	[ -z $opcion ] && echo "Elija una opcion valida" && continue
	[ $REPLY == 1 ] && echo "Saliendo.." && break
	echo "Opcion elegida: " $opcion
done

exit 0
