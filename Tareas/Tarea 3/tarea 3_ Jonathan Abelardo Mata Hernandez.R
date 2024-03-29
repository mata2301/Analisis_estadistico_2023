#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 24/02/2022
#Matricula: 1686965

#Asignacion 3:  Medidas de tendencia central

#Problemas

#Problema 1
#Considere los siguinetes datos de x & y

xi <- c(6, 4, 1, 3)
xi

yi <- c(1, 3, 4, 2)
yi

sum(xi)
prod(xi)

sum(yi)
prod(yi)

sum(xi*yi)
prod(xi*yi)


#Problema 2

#Se enuncian dos conjunto de datos que contienen la alturas de plántulas (cm) producidas envivero. El primero conjunto contiene solo 4 alturas y el segundo consta de 15.

Grupo_A <- c(80, 90, 90, 100)
Grupo_A

Grupo_B <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
Grupo_B


#Sin realizar ningún calculo, cual grupo piensas que tiene una altura media mayor.

#Respuesta: GRUPO_A

#Ahora calcule la media para cada clase (en R). ¿Cuál grupo tiene la media en alturamás grande? Coincide con su primera impresión?

mean(Grupo_A)
mean(Grupo_B) 

#Coincide con su primera impresión? R= SI


#Problema 3

#José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escalade 0 a 100. Sus primeros tres exámenes son: 87, 72, 85. ¿Qué necesita José para calificar en el4to. examen para tener una media de 80 en los 4 exámenes?


examenes <- c(87, 72, 85)
sum(examenes)

(4*80)

(4*80)-(sum(examenes))

#comprobacion 

calificaciones <- c(87, 72, 85, 76)

mean(calificaciones)


#Problema 4

#El comité escolar de una pequeña ciudad quiere determinar el número promedio de niños porhogar en su ciudad. Hay 50 hogares en la ciudad. Ellos dividen el total número de niños en laciudad por 50 y determine que el número promedio de niños por hogar es 2.2. ¿Cuál de losiguientes enunciados debe ser verdad?
 
#a) La mitad de los hogares de la ciudad tienen más de 2 hijos.
#b) Hay un total de 110 niños en la ciudad. 
#c) El número más común de niños en un hogar es 2.2.
#d) Nunguna de las anteriores.

(2.2*50)

#verdadero inciso b)

#Problema 5

#El numéro de semillas germinadas (Germinaciones) que se encontraron en las cajas petri

Germinaciones <- c(5, 6, 7, 8, 9)
Germinaciones


Cajaspetri <- c(1, 3, 5, 3, 1)
Cajaspetri

SemillasG <- data.frame(Cajaspetri, Germinaciones)
SemillasG


mean(SemillasG$Germinaciones)

mean(SemillasG$Cajaspetri)

median(SemillasG$Cajaspetri)

sum(SemillasG$Cajaspetri)

hist(SemillasG$Cajaspetri)
hist(SemillasG$Germinaciones)

stem(SemillasG$Cajaspetri)
stem(SemillasG$Germinaciones)

barplot(Cajaspetri)
barplot(Germinaciones)


#Problema 6
#En este problema, exploramos el efecto sobre la media, la mediana y la moda de: 1) sumar elmismo número a cada valor de datos, y 2) de multiplicar cada valor de datos por el mismonúmero.

#Use el siguiente conjunto de datosset 

set <- c(2, 2, 3, 6, 10)
set

#Calcule la moda, la mediana y la media.


#MODA

library(modeest)
mfv(set)

#MEDIANA

median(set)

#MEDIA

mean(set)


#Suma5 a cada uno de los valores de los datos. Calcule la moda, la mediana y la media.

set5 <-(set+5)
set5

#MODA

mfv(set5)

#MEDIANA

median(set)

#MEDIA

mean(set5)

#Compare los resultados de las partes (a) y (b). En general, ¿cómo crees quela moda, lamediana y la media se ven afectadas cuando se agrega la misma constante a cada valorde datos en un conjunto?

#R= no afecta pero si se incrementan los valores 

#Multipliquecada valor de los datos por 5. Calcule la moda, la mediana y la media.

set.5 <- (set*5)
set.5

#MODA

mfv(set.5)

#MEDIANA

median(set.5)

#MEDIA

mean(set.5)


#Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda,La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto semultiplica por la misma constante?

#R= se incrementan los valores exppnencialmente 


#problema 7

#Para este problema, 

#use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

digitos <- c(0,1,2,3,4,5,6,7,8,9)
digitos

median(digitos)

#a) Enumere cinco dígitos que tengan una mediana de 7 y una media de 7 (se permiten repeticiones). En contrar un conjunto diferente de 5 dígitos que tambien funcionen.

digitos1 <- c(5, 6, 7, 8, 9)
digitos1

#MEDIANA
median(digitos1)

#MEDIA
mean(digitos1)

#Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 (se permiten repeticiones). Da la media de tus 5 dígitos. Encuentra un conjunto diferente de 5 dígitos que funcione.

digitos2 <- c(5, 4, 7, 8, 9)
digitos2

#MEDIANA
median(digitos2)

#MEDIA
mean(digitos2)

digitos3 <- c(5,5,7,8,9)
digitos3

#MEDIANA
median(digitos3)

#MEDIA 
mean(digitos3)
