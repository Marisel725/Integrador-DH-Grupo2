Clonando archivos de un repositorio remoto
Para descargar por primera vez un repositorio remoto a nuestra máquina, tendremos
que clonarlo.
⇒ Abrir una terminal en la ubicación en donde queramos clonar el proyecto.
⇒ Copiar la URL del repositorio que queremos clonar.
⇒ Escribir el comando git clone .
⇒ Pegar la URL después de la palabra clone (dejando un espacio de por medio) y
presionar enter.

Subiendo archivos a un repositorio remoto
Para poder subir nuestros archivos a la nube, debemos seguir los siguientes pasos:
⇒ Abrir una terminal en la ubicación de nuestro repositorio local.
⇒ Correr el comando git status .para ver el estado de nuestros archivos (aquellos
en rojo son los archivos que aún no están en seguimiento).
⇒ Correr el comando git add .     para indicar que queremos agregar todos los
archivos al repositorio.
⇒ Para agregar un solo archivo, correr el comando git add archivo.extension p
en donde deberemos indicar tanto el nombre como la extensión del archivo.
⇒ Correr el comando git status .para ver el estado de nuestros archivos (aquellos
en verde son los archivos que serán agregados al repositorio, por lo tanto estarán
en seguimiento).
⇒ Para confirmar que queremos subir de manera definitiva aquellos archivos que
agregamos, correr el comando git commit -m "mensaje" , en donde, entre
comillas, deberemos escribir, en lo posible, un mensaje corto que resuma el
trabajo que estamos subiendo.
⇒ Para enviar los archivos al repositorio remoto correr el comando
git push origin main