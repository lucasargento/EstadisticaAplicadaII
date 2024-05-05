'''
PROBLEMA DE DUREZA SHORE - ACTIVIDAD SEMANA 5
Usted trabaja como Ingeniero de Producto en una autopartista. Junto con el área de In- vestigación y Desarrollo están desarrollando las especificaciones para una nueva variedad de pastillas de freno. Uno de los atributos más importantes de este producto es la dureza del mismo (medida mediante ensayo de Dureza Shore), la cual, se supone que depende principal- mente del porcentaje de azufre y neoprene que posee la ferro-aleación utilizada para fabricar estos discos de freno.
Para esto, se llevó a cabo un experimento realizándole ensayos de Dureza Shore para 9 discos de freno con distintos porcentajes de azufre y neoprene (se utilizaron porcentajes de azufre de 5%, 5.26% y 5.51%; y para cada uno de estos se varió el porcentaje de neoprene al 3%, 4.23% y 5.57%).
Datos: Ejemplo_Aplicacion_Semana_5.xlsx Hoja: Problema1
'''

# Para importar datos de excel
library(readxl)
# Para graficos más profesionales
library(ggplot2)
# Librerias
library(dplyr)

# IMPORTAR DATOS
datos <- read.csv("semana5.csv")

#A) Especifique el modelo lineal que utilizará para explicar la Dureza Shore a partir del porcentaje de azufre y de neoprene. Estime el modelo. Indique el la proporción de variabilidad en la dureza que es explicada por el azufre y el neoprene en forma conjunta. Analice a significancia de los coeficientes. JUSTIFIQUE el sentido de los test de hipótesis que utiliza y determine a partir de esto el nivel de significación exacto de cada uno de los test de hipótesis.
modelo <- lm(formula = dureza ~ azufre + neoprene, data = datos)
resumen <- summary(modelo)
resumen
