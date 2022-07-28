<h1 align="center">
<br>
  <a href="https://web.fceia.unr.edu.ar/es/">
    <img src="https://jornadasaie.org.ar/wp-content/uploads/2020/09/FCEIA-logo.png" alt="Front-End Checklist" width="530">
  </a>
  <br>
    <br>
    <a href="https://web.fceia.unr.edu.ar/es/carreras/carreras-de-pregrado/2165-tecnicatura-universitaria-en-inteligencia-artificial.html">Tecnicatura Universitaria en Inteligencia Artificial</a>
  <br>
</h1>

---
<h3 align="center">ENTORNO DE PROGRAMACIÓN</h3>

---

<h4 align="center">Implementación del uso de GIT, Docker y Bash Scripting</h4>

<p align="center">
  <a href="#objetivo">Objetivo</a> • <a href="#git">Git</a> • <a href="#requisitos">Requisitos</a> • <a href="#como-usarlo">¿Como usarlo?</a> • <a href="#descripción-de-cada-una-de-las-opciones">Descripción</a> • <a href="#profesores">Profesores</a> • <a href="#autor">Autor</a> 
</p>

---

## Objetivo

El objetivo es hacer el análisis de un texto por medio de distintos scripts.

El trabajo contiene un Dockerfile que al ejecutarse genera una imagen con todos los script, texto y el Ubuntu para poder ejecutarlos por medio de Bash. 

Al ejecutar el contenedor su muestra un menu con distintas opciones para poder analizar el texto.

El texto utilizado es el que se encuentra en el archivo llamado texto.txt.

## GIT

En este repositorio se encuentran los distitnos scripts que realizan diferentes tareas. Tambien se incluye el menu, el directorio con las capturas, el texto a analizar, el README.md y el Dockerfile.

En un principio se realizó un branch para cada uno de los script y al final se realizó el merge a la rama principal.

## Requisitos

➔ Se necesita tener instalado Docker para poder crear la imagen apartir del Dockerfile.

➔ Tener permiso de administrador.

## ¿Como usarlo?

* Descargar todo el contenido.
* Desde la terminal dirigirse a la carpeta descargada y descomprimirla.
* Ejecutar desde Bash el siguiente comando:

```
docker build --tag tp:1.0 .
``` 
* El comando **build** crea la imagen **tp** con el tag **1.0**

![imagen build][build_img]

* Luego ejecutar:

```
docker images
``` 
* Para ver que la imagen se creó correctamente.

![imagen imagen][img_img]

* Se utiliza Ubuntu para ejecutar los scripts en el contenedor.
* Para ejecutar el contenedor usar el comando **run**

```
docker run -it tp:1.0
``` 
* Si todo se realizó de forma correcta, tendría que ejecutarse el script **menu.sh**

![imagen menu][menu_img]

## Descripción de cada una de las opciones

  **1)** ***SALIR*** => Sale de la aplicación.
  
  **2)** ***Estadisticas de palabras*** => Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).
  
  ![opcion2][opcion2_img]
  
  **3)** ***Estadisticas de uso de palabras*** => Indicador estadístico de uso de palabras. Muestra un Top Ten de las palabras más usadas de al menos 4 letras, ordenadas desde la que tiene más apariciones a la que tiene menos.
  
  ![opcion3][opcion3_img]
  
  **4)** ***Encontrar nombres*** => Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
  
  ![opcion4][opcion4_img]
  
  **5)** ***Estadísticas de oraciones*** => Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).
  
  ![opcion5][opcion5_img]
  
  **6)** ***Contador de líneas en blanco*** => Cuenta la cantidad de líneas en blanco.
  
  ![opcion6][opcion6_img]
  
## Descripción detallada de cada uno de los script que se relacionan con cada opción

 
 #️⃣ ***menu.sh:*** Utiliza un select y un case que según la opción seleccionada llama a alguna de las funciones que están en los otros script.
 
 #️⃣ ***statsWords.sh:*** Se recorre el texto palabra por palabra y se obtiene el tamaño de estas, sin contar los caracteres ',''.'':'';' En cada recorrido se compara el tamaño de esta con el tamaño de la palabra más corta y la más larga almacenadas anteriormente, y se actualiza si corresponde. Al final calcula el promedio de la longitud de todas las palabras. Luego se muestra en pantalla la cantidad de caracteres que tiene la palabra más larga, la más corta y el promedio.  
 
 #️⃣ ***statsUsageWords.sh:*** Se hace uso de expresiones regulares para matchear una letra 4 o mas veces (para obtener palabras mayores a 4 caracteres) y acomodarlo en una columna con el -o del grep. Luego se orgeda para que luego con el uniq -c cuente las veces que se repiten las lineas colocandole un prefijo y se utiliza -i para no distinguir entre mayúscula y minúscula. Luego se ordena de mayor a menor y se muestran los primeros 10 resultados.
 
 #️⃣ ***findNames.sh:*** Se recorre el texto palabra por palabra y sin contar los caracteres ',''.'':'';' Se hace uso de una expresión regular para matchear con las palabras que empiezan con mayúscula, para luego imprimirla en pantalla.
 
 #️⃣ ***statsSentences.sh:***  Se recorre el texto palabra por palabra y por medio de una expresión regular ['.']$ se identifica la palabra que termina con un punto. Mientra no termine en un '.' se va contando la cantidad de letras y se guardan en una variable contador. Cuando llega a un '.' se compara la cantidad almacenada en el contador con las mínimas y máximas longitudes almacenadas anteriormente y se actualizan estas variables si correspondiera. Luego se muestra en pantalla la cantidad de letras que tiene la oración más larga, la más corta y el promedio.  
 
 #️⃣ ***blankLinesCounter.sh:***  Primero se almacena la cantidad de líneas que tiene todo el texto. Luego las líneas que no estan en blanco (grep .) se cuentan con wc -l y se almacenan en otra variable. Finalmente se muestra la resta de ambas.
 
 
---


## Profesores

* Gustavo Bocchio
* Andrea León Cavallo
* Damían Marotte

## Autor

**[Fabian Aguirre](https://github.com/yendor2)**



[menu_img]: https://github.com/yendor2/tp/blob/main/capturas/Menu.PNG
[img_img]: https://github.com/yendor2/tp/blob/main/capturas/images.PNG
[build_img]: https://github.com/yendor2/tp/blob/main/capturas/build.PNG
[opcion2_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion2.PNG
[opcion3_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion3.PNG
[opcion4_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion4.PNG
[opcion5_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion5.PNG
[opcion6_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion6.PNG
