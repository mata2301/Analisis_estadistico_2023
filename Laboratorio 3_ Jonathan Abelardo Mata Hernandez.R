#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 23/02/2022
#Matricula: 1686965

#Laboratorio 3: Importar datos a R

#Parte 1: Importar datos

trees <- read.csv("DBH_1.csv", header = TRUE)
head(trees)

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)


#Datos de URL no seguros


prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"

profepa <- read.csv(prof_url, header = TRUE, encoding = "latin1")
profepa
head(profepa)

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)




# Parte 2: Operaciones con la base de datos

# media
mean(trees$dbh) 
## [1] 15.64333
#Este signo $ informa que elegimos la calumna dbh

#desviación estándar
sd(trees$dbh)

#Selección mediante restricciones

#igual o mayor (>=), mayor que (>), igual que (==)
#igual o menor (<=), menor que (<), no igual (!=)

# Indica la sumatoria de los individuos en el objeto trees con un dbh < a 10
sum(trees$dbh < 10)


which(trees$dbh < 10)

#Símbolo ! indica NO 
trees.13 <- trees[!(trees$parcela=="2"),]
trees.13

#Selección de una submuestra

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)


#BDD 1
mean(trees$dbh)


#BDD 2
mean(trees.1$dbh)

hist(trees$dbh)

hist(trees.1$dbh)
hist(trees$dbh, ylab = "Frecuencia", xlab = "DBH", main = "Muestra orinal trees")
hist(trees.1$dbh, ylab = "Frecuencia", xlab = "DBH", main = "dbh < 10 cm. trees.1")

# PARTE 3. REPRESENTACIÓN GRAFICA

#HISTOGRAMAS

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
head(mamiferos)

#Variable total_sleep para generar el histograma

hist(mamiferos$total_sleep)

#HISTOGRAMA PRESENTABLE

hist(mamiferos$total_sleep)   

hist(mamiferos$total_sleep, #datos
     xlim = c(0,20), ylim = c(0,14), main = "Total de horas sueño de las 39 especies", #cambiar titulo
     xlab = "Horas sueño", #cambiar eje de las x
     ylab = "Frecuencia", #cambiar eje de las y
     las = 1, #cambiar orientacion de y
     col = "BLUE") #cambiar color a las barras

#Barplot o gráfico de barras: Un diagrama de barras (o gráfico de barras) es uno de los tipos de gráficos más comunes. Muestra la relación entre una variable numérica y una categórica. 

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

#Acomodar los datos en columna
feeds <- table(chickwts$feed)
feeds
barplot(feeds)

#Ordenar de forma decreciente

barplot(feeds[order(feeds, decreasing = TRUE)])

#y darle presentacion a la grafica 


barplot(feeds[order(feeds, decreasing = FALSE)], main = "Frecuencias por tipos de
alimento",
        xlab = "Cantidad de pollos",
        las=1,
        col= "yellow",
        horiz = TRUE)








