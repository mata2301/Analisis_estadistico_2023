#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 27/02/2022
#Matricula: 1686965

#Laboratorio 4: Resumir datos gráficamente

#Importar datos csv

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/","PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(esp.url)
inventario


# funciones insepecciòn y estructura --------------------------------------


#str(inventario): mostrar la estructura general de los datos
str(inventario)

#dim(inventario): dimensiones (i.e. tamaño) del conjunto de datos
dim(inventario)

#head(inventario, n = 5): muestra las primerasnfilas
head(inventario, n=5)

#tail(inventario, n = 5): muestra las últimasnfilas
tail(inventario, n=5)

#names(inventario): nombre de las columnas
names(inventario)

#colnames(inventario): igualnames(inventario)
colnames(inventario)

#summary(inventario): resumen estadístico de las variables presentes eninventario
summary(inventario)

# nombre de las primeras cinco columnas
names(inventario[ ,1:5])


# Resumen estadístico básico de las columnas 3 a 5 columnas
summary(inventario[ ,3:5])

is.factor(inventario$Posicion)


summary(inventario[ ,3:5])


# Tablas de frecuencia ----------------------------------------------------

#tabla de frecuencia. 

freq_position <- table(inventario$Posicion)
freq_position

#frecuencias relativas.

prop_position <- freq_position / sum(freq_position)
prop_position


#Si desea expresar las proporciones como porcentajes, multipliqueprop_positionpor 100:

perc_position = 100 * prop_position
perc_position


# Gráficas barplot y pie --------------------------------------------------

barplot(freq_position, las = 1, border = "blue", cex.names = 2)


# Argumentos de barplot ---------------------------------------------------

#las = 1: muestra las frecuencias perpendiculares al eje-y.

las=1
las

#border = NA: elimina el borde negro alrededor de las barras.

border = NA
border

#cex.names = 0.7: reduce los tamaños de las etiquetas de categoría (para que todas quepanen el gráfico).

cex.names = 0.7
cex.names

#Gráfico circular o pie. El otro tipo común de gráfico para ver frecuencias es un gráfico circular.R proporciona la funciónpie()para producir estos gráficos:

pie(freq_position, col=topo.colors(4))

#Si desea mostrar las frecuencias, puede hacer algo como esto:

pie(freq_position, col = topo.colors(4),
    labels = paste(levels(inventario$Posicion), round(perc_position, 2), " %"))


# Autoestudio -------------------------------------------------------------

freq_Especie <- table(inventario$Especie)
freq_Especie

prop_Especie <- freq_Especie / sum(freq_Especie)
prop_Especie

perc_Especie = 100 * prop_Especie
perc_Especie

barplot(freq_Especie, las = 1, border = "red", cex.names = 2)

pie(freq_Especie, col=topo.colors(3))

pie(freq_Especie, col = topo.colors(3),
    labels = paste(levels(inventario$Especie), round(perc_Especie, 2), " %"))




# Representación de variables cuantitativas -------------------------------

#Histogramas

diam_hist <- hist(inventario$Diametros, las = 1, col ='orange')
diam_hist

diam_hist$breaks

diam_hist$mids

h1 <-  hist(inventario$Diametros, xaxt = "n",breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
            col = "green", xlab="Diámetros (cm)",
            ylab= "Frecuencias",main = "",las = 1,
            ylim = c(0,14))
axis(1, h1$mids)


# autoestudio altura ------------------------------------------------------

altura_hist <- hist(inventario$Altura, las = 1, col ='black')
altura_hist

altura_hist$breaks

altura_hist$mids

h2 <-  hist(inventario$Altura, xaxt = "n",breaks = c(8, 10, 12, 14, 16, 18, 20, 22),
            col = "green", xlab="altura (m)",
            ylab= "Frecuencias",main = "",las = 1,
            ylim = c(0,14))
axis(1, h2$mids)
