#ANALISIS ESTADISTICO
#Nombre: Jonathan Abelardo Mata Hernandez
#Fecha: 23/02/2022
#Matricula: 1686965

#Asignacion 2: Uso de restricciones y estadísticas descriptivas

#Importar la base de datos a excel a R en un objeto llamada conjunto

conjunto <- read.csv("cuadro1.csv", header = TRUE)
head(conjunto)

#Aplicar la función subset para la variable Altura

mean(conjunto$Altura)
H.media <- subset(conjunto, conjunto$Altura <= 13.45)
head(H.media)

H.16 <- subset(conjunto, conjunto$Altura <= 16)
head(H.16)

#Aplicar la función subset para la variable Vecinos

Vecinos.3 <- subset(conjunto, conjunto$Vecinos <= 3)
head(Vecinos.3)

Vecinos.4 <- subset(conjunto, conjunto$Vecinos > 4)
head(Vecinos.4)

#Aplicar la función subset para la variable Diametro

mean(conjunto$Diametro)
DBH.media <- subset(conjunto, conjunto$Diametro < 15.79)
head(DBH.media)

DBH.16 <- subset(conjunto, conjunto$Diametro > 16)
head(DBH.16)


#Aplicar la función subset para la variable Especie

CedroRojo <- subset(conjunto, Especie=="C")
head(CedroRojo)

Tsugahe_Douglas <- subset(conjunto, Especie!="C")
head(Tsugahe_Douglas)

Cedromedia <- subset(conjunto, Diametro <= 16.9)
head(Cedromedia)

Tsugahe_Douglasmedia <- subset(conjunto, Altura >18.5)
head(Tsugahe_Douglasmedia)

#Visualización de datos

hist(altura)
hist(H.media$Altura)
hist(H.16$Altura)

hist(Vecinos$Vecinos)
hist(Vecinos.3$Vecinos)
hist(Vecinos.4$Vecinos)

hist(DBH.media$Diametro)
hist(DBH.16$Diametro)

#Estadísticas básicas

mean(altura)
sd(altura)

mean(H.media$Altura)
sd(H.media$Altura)

mean(H.16$Altura)
sd(H.16$Altura)

mean(Vecinos$Vecinos)
sd(Vecinos$Vecinos)

mean(Vecinos.3$Vecinos)
sd(Vecinos.3$Vecinos)

mean(Vecinos.4$Vecinos)
sd(Vecinos.4$Vecinos)

mean(DBH.media$Diametro)
sd(DBH.media$Diametro)

mean(DBH.16$Diametro)
sd(DBH.16$Diametro)




