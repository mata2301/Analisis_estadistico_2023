#ejercicio en clase 
# 02/03/2023


library(repmis)
conjunto2 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto2)

conjunto2$Especie <- as.factor(conjunto2$Especie)

conjunto2$Clase <- as.factor(conjunto2$Clase)

boxplot(conjunto2$Diametro,
        col= "blue",
        ylab= "Diametro")

boxplot(conjunto2$Diametro ~ conjunto2$Especie)


boxplot(conjunto2$Altura ~ conjunto2$Especie)
#un valor atipoco se sale del valor del 95%, valor extremo. 

boxplot(conjunto2$Diametro ~ conjunto2$Clase)



cor.test(conjunto2$Diametro, conjunto2$Altura)

#se verifica con el valor de p-value (debe de ser =0.05 que es el valor referencial.)
#p-value = 1.724e-05 nos dio esa, si es significativa porque es mas bajo al valor referencial.

plot(conjunto2$Diametro, conjunto2$Altura)

plot(conjunto2$Diametro, conjunto2$Altura, pch = 19)

#importante el valor de correlacion que aqui nos da "0.5675298"
#correlacion siempre es n-2





