#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 02/03/2022
#Matricula: 1686965

#Laboratorio 5: Correlación


# Ejercicio 1: El cuarteto de Anscombe ------------------------------------

#Actividades

#Generar los gráficos de distribución de puntos para cada par de datos

# Graficar en un cuadro de 2x2

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)


#Correlacion 

cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$y4, anscombe$y4)





