#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 02/03/2023
#Matricula: 1686965

#Asignacion 5:  Correlación


# Ejericio 1 --------------------------------------------------------------

#Cuadro 1: Abundancia de las efímeras de un arroyo y la velocidad de la corriente de un arroyo.

Speed <- c(2, 3, 5,  9, 14,  24,  29,  34)
Speed

Abundance <- c(6, 3, 5, 23, 16, 12,  48,  43)
Abundance

plot(Speed, Abundance, pch = 16)


#Es estadísticamentesignificativa la correlación?
cor.test(Speed, Abundance)

#R= Si, es significativa porque su (p-value= 0.008393) es mas baja al valor  de referencia 0.05


#Comenzamos con una hipótesis para probar. En este caso, esperamos una mayor abundancia deefímeras a medida que aumenta la velocidad del arroyo. Escribiríamos esto formalmente (nuestrahipótesis alternativa H1) como:

#R= Existe una correlación positiva entre la velocidad de los arroyos y la abundanciade efímeras (Ecdyonurus dispar)


# Ejericio 2 --------------------------------------------------------------

library(repmis)

suelos <- read.csv("suelo.csv")
suelos

#Realizar un análisis de correlación para las variables y reportar en un cuadro los valores de coeficientede correlación y su valor de significancia (p-value):

cor.test(suelos$pH, suelos$N)

cor.test(suelos$pH, suelos$Dens)

cor.test(suelos$pH, suelos$P)

cor.test(suelos$pH, suelos$Ca)

cor.test(suelos$pH, suelos$Mg)

cor.test(suelos$pH, suelos$K)

cor.test(suelos$pH, suelos$Na)

#Cuadro 3: Ejemplo de cuadro de datos con los estadísticos de interés.
cuadro3 <- read.csv("cuadro3.csv")
cuadro3


#Columnas que se necesita hacer correlacion 
suelo.1 <- suelos[, 7:15]
suelo.1

#base con solo las 4 columas que se nececita hacer una correlacion 

suelos.cor <- round(cor(suelo.1), digits = 4)
suelos.cor

library(corrplot)

corrplot(suelos.cor, tl.col = "black", bg = "white", tl.srt = 35,
         title = "correlacion de suelos",
         addCoef.col = "black", type = "upper")

