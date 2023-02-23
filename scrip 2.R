prof.url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"



profepa <- read.csv(prof.url)

mean(profepa$Inspección)
mean(profepa$Recorrido)

fivenum(profepa$Inpeccón)
fivenum(profepa$Operativo)

mayor.in <- subset(profepa, profepa$Inspección >=16)
mayor.op <- subset(profepa, profepa$Inspección >=2)
