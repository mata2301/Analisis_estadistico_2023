
#Examen práctico MFC-202

#31/03/2023

#Jonathan Abelardo Mata Hernandez 


# Conjunto de datos  ------------------------------------------------------

library(repmis)
suelo <- source_data("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")
head(suelo)

is.factor(suelo$zone)

suelo$zone <- factor(suelo$zone)
as.factor(suelo$zone)

suelo$wrb1 <- factor(suelo$wrb1)
as.factor(suelo$wrb1)


# ACTIVIDADES -------------------------------------------------------------

#Actividad 1: 
summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)
#entre más profunidad la media se incrementa, esto nos dice que tiene una tendencia positiva(+)

#Actividad 2:
#pregunta 1
stem(suelo$Clay1)

#pregunta 2
#los datos de contenido de arcilla siguen una distribución simetrica o son sesgo?
#R= con sesgo, se comprueba con el histagrama los datos se van hacia la izquierda.
hist(suelo$Clay1)


#Actividad 3
boxplot(suelo$Clay1)

#pregunta 3
#¿existe evidencia de outliers? si, existen.

#pregunta 4
#¿puede identificar cuales observaciones son mediante una simple restricción de datos?
#R= si mediante la funcion 

which(suelo$Clay1 > 65)



#Actividad 4
mean(suelo$Clay1)

#pregunta 5
#¿estime si el contenido de arcilla promedio en los sulos tropicales de 30% es significativo diferente que la media observada en el campo expremiental TCP?
t.test(suelo$Clay1, mu=30)
#si es sig 

#Actividad 5
#pregunta 6
cor.test(suelo$Clay1, suelo$Clay5)
#relacion positiva 

#pregunta 7
#¿la correlación es estadisticamente significativa?R= si es estadisticamente sig. 

#Actividad 6

#pregunta 8
#es posible determinar una ecuación significativa para predecir el comportamniento del contenido de arcilla en el perfil inferior clay5?
#R= si es posible

#pregunta 9 
#¿cual es la ecuación final para predecir el comportamiento del contenido de arcilla en el perfil mas profundo (30-50cm)?

regresion <- lm(suelo$Clay5~suelo$Clay1)
regresion
plot(suelo$Clay5 ~ suelo$Clay1)
abline(regresion)
lm(suelo$Clay5 ~ suelo$Clay1)

#pregunta 10
#¿son ambos parametros alfa y beta significativos?
summary(regresion)
#R= si, amnos son significativos 

#pregunta 11
#¿cual es el porcentaje de varianza explicado por el metodo aplicado?
anova(regresion)
summary(regresion)
#se revisa la R cuadrada ajustada que es del 80%, asi que es confiable porque predice y esta cerca de 1 el mresultado (0.80). 

#Actividad 7

#pregunta 12
#¿existe una fromula de identificar la variación entre las cuatro zonas que se encuentran en el estudio?
#si existe, mediante el analisis de varianza 

#pregunta 13
#realice una inspeccion visual del contenido de arcilla en el perfil 30-50cm (clay5) y las cuatro zonas (zone) presentes en el area de estudio . ¿existen indicios de que las cuatro zonas son diferentes en cuanto al contenido de arcilla en el perfil 30 a 50 cm?
boxplot(suelo$Clay5~suelo$zone)
#R=si es diferente diferencias en los contenidos de arcilla, analisando la grafica se puede observar claramente.

#Pregunta 14
#Observa alguna tendencia en los datos en las diferentes zonas?
#R= el valor maximo disminuye conforme cambia la zona.

by(suelo$Clay5, suelo$zone, summary)


#Actividad 8
#determine mediante un analisis de varianza con las variable contenido de arcilla en el perfil 30-50 y el factor o tratamiento de zonas.
anova <- aov(suelo$Clay5 ~ suelo$zone)
summary(anova)

TukeyHSD(anova)

#Pregunta 15
#existen diferencias significativas entre el contenido de arcilla del perfil 30-50 cm y las zonas de estudio 
# si existe diferencias significativas, a excepción de zona 1 y 2.

#pregunta 16
#en caso de existir difrencias ¿cuales son diferntes estadisticamente entre si en el contenido de arcilla en el perfil de 30-50?
#la zona 1 y 2 no tienen diferencias significativas pero, la zona 3-1, 4-1, 3.2, 4-2, 4-3, tienen diferencias significativas. ..

