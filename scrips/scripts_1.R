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

#boxplot

boxplot(dbh)
boxplot(h)
plot(dbh,h)
hist(dbh)


?rnorm

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



