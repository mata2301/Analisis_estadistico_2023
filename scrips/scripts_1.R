#Jonathan Abelardo Mata Hernandez 
#09/02/2023

#sesion 1 Estadisticas descriptivas 

# Primera sesión  ---------------------------------------------------------

dbh <- 15
h <- 8

#multiplicación 

dbh * h

log(dbh)

dbh <-  c(12, 8, 7,5 , 11, 13, 16, 21, 8, 16)
h <- c(5, 3, 2.5,2, 4.7, 5.8, 7, 11, 2.4, 7.2)

dbh*h


# Graficas ----------------------------------------------------------------


#boxplot

boxplot(dbh)
boxplot(h)
plot(dbh,h)
hist(dbh)




set.seed(13)
obs.50 <- rnorm(50, mean = 3)
obs.50
hist(obs.50)

set.seed(13)
if.50 <- runif(50, min = 10, max = 40)
hist(if.50)

set.seed(13)
if.100 <- runif(100, min = 10, max = 40)
hist(if.100)

if.500 <- runif(500, min = 10, max = 40)
hist(if.500)

if.1000 <- runif(1000, min = 10, max = 40)
hist(if.1000)


stem(if.50)
hist(if.50)


# Restrcciónes ------------------------------------------------------------

#Trabajar con datos del objeto if.50

mean(if.50)
fivenum(if.50)
boxplot(if.50)

# igual a ==
# diferente a !=
# igual o mayor >=
# igual o menor <=
# mayor que >
# menor que <

if.50 <= median(if.50)

dbh.50 <- subset(if.50, if.50 <= median(if.50))


dbh.up50 <- subset(if.50, if.50 >= median(if.50))

dbh.up30 <- subset(if.50, if.50 > 30)
dbh.up30

mean(dbh.up30)
sd(dbh.up30)


# importar datos ----------------------------------------------------------

# función read.csv

Fert <- read.csv("vivero.csv", header = TRUE)
Fert$Tratamiento <- as.factor(Fert$Tratamiento)

boxplot(Fert$IE ~ Fert$Tratamiento,
        xlab = "Tratamientos",
        ylab = "Indíce de Esbeltez",
        col = "red",
        main = "Vivero Bosque Escuela",
        las = 1,
        ylim =c(0.4, 1.4))



