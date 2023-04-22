prof.url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"



profepa <- read.csv(prof.url)

mean(profepa$Inspección)
mean(profepa$Recorrido)

fivenum(profepa$Inpeccón)
fivenum(profepa$Operativo)

mayor.in <- subset(profepa, profepa$Inspección >=16)
mayor.op <- subset(profepa, profepa$Inspección >=2)



#tarea tres (parte 5)

germi <- c(5, 6, 7, 8, 9)
petri <- c(1, 3, 5, 3, 1)
sum(Germinacion$petri)

germ.2 <- c(5, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 9 )
c.petri <- c(1:13)
Germinacion <- data.frame(petri, germi)
mean(Germinacion$germi)


Germ2 <- data.frame(c.petri, germ.2)
Germ2
mean(Germ2$germ.2)

stem(germ.2)

hist(germ.2)
