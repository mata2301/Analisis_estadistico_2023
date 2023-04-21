#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 03/02/2022
#Matricula: 1686965

#Laboratorio 1: Empezar con R y RStudio
#Trabajar con datos en R

#Gastos totales

300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular
transporte <- 240
transporte
comestible <- 1527
comestible
gimnasio <- 400
comestible
alquiler <- 1500
alquiler
otros <- 1833
otros

gastos_totales <- c(celular + transporte + comestible + gimnasio + alquiler + otros)
gastos_totales
gastos_5meses <- c(gastos_totales*5)
gastos_5meses
gastos_10meses <- c(gastos_5meses*2)
gastos_10meses

gastos <- c(celular, transporte, comestible, gimnasio, alquiler, otros)
gastos
barplot(sort(gastos))
variables <- c('celular','transporte','comestible','gimnasio','alquiler','otros')
variables
Cantidad <- c(300,240,1527,400,1500,1833)
Cantidad

barplot(height=Cantidad, names=variables,
        col=c('blue'))

#Parte II Variables
#problema 1:

#Nombre de estudiante(cualitativa)
#Fecha de nacimiento (cualitativa)
#Edad(cuantitativa)
#Dirección de casa(cualitativa)
#Número de telefono(cualitativa)
#Área principal de estudio(cualitativa)
#Grado de año universitario(cuantitativo)
#Puntaje de prueba de mitad de período(cuantitativa)
#Calificación general(cualitativo)
#Tiempo para completar la prueba final de MCF 202(cuantitativa)
#Número de hermanos(cuantitativa)

#Problema 2:

#apps para ver peliculas 

#cuantitativas
#cuantas aplicaciones existen a nivel global
#cuantas aplicaciones hay en tu pais
#cuantas aplicaciones son gratis
#cuantas aplicaciones son de paga 
#cuantas apps son las menos descargadas
#cuantas apps son las más descargadas
#cuantas apps son ilegales

#Categórias
#series más vistas de cada aplicación 
#series mas vistas en México
#aplicación preferida por los millenials
#aplicación preferida por personas mayores
#app preferida por tus amigos
#el color de cada app
#el diseño de cada logotivo de las apps

#Problema 3

#¿Qué aplicación de expresión personal es la más usada por los jovenes?
#R= 2(TWITTER)

#¿cuántos usuarios de twitter son hatters?
#es una variable cuantitativa ya que se el número de usuarios de expresara de manera númerica.

#problema 4

#¿Cuál es la cantidad promedio de horas que los estudiantes de universidades públicas trabajan cada semana?
#(1)los estudiantes 
#(2)horas de trabajo semanal 
#(3)cuantitativa 

#¿Qué proporción de todos los estudiantes universitarios de México están inscritos en una universidad pública?
#(1)estudiantes universitarios 
#(2)inscritos en universidad pública
#(3)cuantitativa

#En las universidades públicas, ¿las estudiantes femeninas tienen un promedio de CENEVAL más alto que los estudiantes varones?
#(1)las estudiantes femeninas y los estudiantes varones 
#(2)promedios 
#(3)categórica 

#¿Es más probable que las atletas universitarias reciban asesoramiento académico que los atletas no universitarios?
#(1)atletas universitarios y no universitarios 
#(2)acesoramiento academico 
#(3)categórico

#Si reuniéramos datos para responder a las preguntas de la investigación anterior, ¿que datos podrían analizarse mediante un histagrama? ¿Cómo lo sabes?.
#(1)horas de trabajo semanalen promedio, número de estudiantes inscritos
#(2)los cuantitativos, ya que podrian graficarse mediante histogramas
#(3)categórico, se sabe porque son datos cuantificables. 




