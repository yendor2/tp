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

<h4 align="center">The Front-End Checklist is an exhaustive list of all elements you need to have / to test before launching your website / HTML page to production.</h4>

<p align="center">
  <a href="#objetivo">Objetivo</a> • <a href="#autor">Autor</a> • 
</p>

---

## Objetivo

El objetivo es hacer el análisis de un texto por medio de distintos scripts.

El trabajo contiene un Dockerfile que al ejecutarse genera una imagen con todos los script, texto y el Ubuntu para poder ejecutarlos por medio del Bash. 

Al ejecutar el contenedor su muestra un menu con distintas opciones para poder analizar el texto.

El texto utilizado es el que se encuentra en el directorio llamado texto.txt.

## GIT

En este repositorio se encuentran los distitnos scripts que realizan diferentes tareas. Tambien se incluye el menu, el texto a analizar, el README.md y el Dockerfile.

En un principio se realizó un branch para cada uno de los script y al final se realizó el merge a la rama principal.

## Requisitos

➔ Se necesita tener instalado Docker para poder crear la imagen apartir del Dockerfile.
➔ Tener permiso de administrador.

## ¿Como usarlo?

* Descargar todo el contenido.
* Desde la terminal dirigirse a la carpeta descargada.
* Ejecutar desde Bash el siguiente comendo comando:

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

* Para crear el contenedor ejecutar el comendo **run**

```
docker run -it tp:1.0
``` 
* Si todo se realizó de forma correcta, tendría que ejecutarse el script **menu.sh**

![imagen menu][menu_img]

### Descripcion de cada una de las opciones

>  **1)** ***SALIR*** => Sale de la aplicación.
>  
>  **2)** ***Estadisticas de palabras*** => Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).
>  
>  ![opcion2][opcion2_img]
>  
>  **3)** ***Estadisticas de uso de palabras*** => Indicador estadístico de uso de palabras. Muestra un Top Ten de las palabras de al menos 4 letras, ordenadas desde la que tiene más apariciones a la que tiene menos.
>  
>  ![opcion3][opcion3_img]
>  
>  **4)** ***Encontrar nombres*** => Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
>  
>  ![opcion4][opcion4_img]
>  
>  **5)** ***Estadísticas de oraciones*** => Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).
>  
>  ![opcion5][opcion5_img]
>  
>  **6)** ***Contador de líneas en blanco*** => Cuenta la cantidad de líneas en blanco.
>  
>  ![opcion6][opcion6_img]
>  
### Descripcion detallada de cada uno de los script que se relacionan con cada opción

 
 #️⃣ ***menu.sh:*** Utiliza un select y un case que según la opción seleccionada llama a alguna de las funciones que están en los otros script.
 
 #️⃣ ***statsWords.sh:*** Se recorre el texto palabra por palabra y se obtiene el tamaño, sin contar los caracteres ',''.'':'';' En cada recorrido se compara la palabra con la mínima y maxima almacenada, y se actualiza si corresponde. Al final calcula el promedio de la longitud de todas las palabras. 
 
 
Some resources possess an emoticon to help you understand which type of content / help you may find on the checklist:

* 📖: documentation or article
* 🛠: online tool / testing tool
* 📹: media or video content

> You can contribute to the ***Front-End Checklist App*** reading the [CONTRIBUTING.md file](https://github.com/thedaviddias/Front-End-Checklist/blob/master/CONTRIBUTING.md) which explains everything about the project.
---


## Profesores

* Gustavo Bocchio
* Andrea León Cavallo
* Damían Marotte

## Autor

**[Fabian Aguirre](https://github.com/yendor2)**



**[⬆ volver arriba](#tabla-de-contenidos)**

[menu_img]: https://github.com/yendor2/tp/blob/main/capturas/Menu.PNG
[img_img]: https://github.com/yendor2/tp/blob/main/capturas/images.PNG
[build_img]: https://github.com/yendor2/tp/blob/main/capturas/build.PNG
[opcion2_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion2.PNG
[opcion3_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion3.PNG
[opcion4_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion4.PNG
[opcion5_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion5.PNG
[opcion6_img]: https://github.com/yendor2/tp/blob/main/capturas/opcion6.PNG
