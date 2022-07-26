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
* Luego ejecutar:

```
docker images
``` 
* Para ver que la imagen se creó correctamente.

```mp
![img]
``` 
* Para crear el contenedor ejecutar el comendo **run**

```
docker run -it tp:1.0
``` 
* Si todo se realizó de forma correcta, tendría que ejecutarse el script **menu.sh**

```mp
![img]
``` 
![Medium][medium_img] 

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

[low_img]: data/images/priority/low.svg
[medium_img]: data/images/priority/medium.svg
[high_img]: data/images/priority/high.svg
