Bienvenido!!

Nuestro programa analiza un texto previamente pasado como input y da a elegir entre diferentes opciones sobre lo que se puede hacer con el.
Una vez que cuente con el repositorio en su dispositivo, deberá ejecutar el siguiente comando:

docker build --tag tpfinal:1.0 .

Cuando dicho proceso finalice, proseguirá con el comando:

docker run -it {id de la imagen creada}

Una vez realizadas estas dos instrucciones, el contenedor se ejecutará y presentará los archivos .txt que posee en su interior entre los cuales usted deberá elegir sobre el que quiere trabajar tipeando el nombre exacto. Luego se desplegará un menu de opciones de analisis de texto (recordar que si el nombre del archivo está mal escrito, el programa no tendrá nada que analizar), y usted deberá elegir la opción que desee que el programa devuelva tipeando el numero de opción. Una vez finalizadas sus consultas, deberá ingresar el numero correspondiente a "Salir" para finalizar la ejecución.

EJEMPLO PASO A PASO:

root@lucas-vb:/home/lucas/Documentos/edp/TP_Final# docker build --tag tpfinal:1.7 .
Sending build context to Docker daemon  365.1kB
Step 1/15 : FROM ubuntu:22.10
 ---> 8264e2ec2ece
Step 2/15 : WORKDIR TP_final
 ---> Using cache
 ---> acaddc0f3fc7
Step 3/15 : ADD ["texto.txt", "/TP_final"]
 ---> Using cache
 ---> 12c2b0355c93
Step 4/15 : ADD ["menu.sh", "/TP_final"]
 ---> Using cache
 ---> 056e891f57db
Step 5/15 : ADD ["statsWords.sh", "/TP_final"]
 ---> Using cache
 ---> 7c5e6f4e910c
Step 6/15 : ADD ["statsUsageWords.sh", "/TP_final"]
 ---> Using cache
 ---> b20883610f4d
Step 7/15 : ADD ["findNames.sh", "/TP_final"]
 ---> Using cache
 ---> ab0b3cf8e88d
Step 8/15 : ADD ["statsSentences.sh", "/TP_final"]
 ---> Using cache
 ---> 4fcbb4575d48
Step 9/15 : ADD ["blankLinesCounter.sh", "/TP_final"]
 ---> Using cache
 ---> 995556d76ceb
Step 10/15 : ADD ["caseConverter.sh", "/TP_final"]
 ---> Using cache
 ---> a82cf323400d
Step 11/15 : ADD ["substringReplace.sh", "/TP_final"]
 ---> Using cache
 ---> d27f9d244c2e
Successfully built d27f9d244c2e
Successfully tagged tpfinal:1.7

root@lucas-vb:/home/lucas/Documentos/edp/TP_Final# docker images
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
tpfinal      1.7       d27f9d244c2e   19 hours ago   70.2MB

root@lucas-vb:/home/lucas/Documentos/edp/TP_Final# docker run -it d27  ---> primeros 3 digitos del IMAGE ID
Textos disponibles:
texto.txt  ---> aqui aparecerian los textos disponibles


Ingrese el texto sobre el que desea trabajar: texto.txt  ---> Escribo el texto
Bienvenido
Que desea hacer?
 1) SALIR
 2) Indicador estadistico de longitud de palabras
 3) Indicador estadistico de uso de palabras. 10 mas usadas
 4) Identificacion de nombres propios
 5) Indicador estadistico de longitud de oraciones
 6) Contador de lineas en blanco
 7) Invertir minusculas a mayusculas, y viceversa, de todas las palabras
 8) Remplazo de subcadenas
 9) Seleccion de oracin y/o parrafo en base a un numero de entrada
10) Mostrar palabras palindromos
>> --------------------------------------------------> Aqui podra elegir una opcion (con numeros!!)
