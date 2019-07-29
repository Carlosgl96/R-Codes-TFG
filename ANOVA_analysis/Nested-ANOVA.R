##

# Autor: Carlos González López
# Proyecto: Trabajo de Fin de Grado de Biolog?a de la Universidad de Málaga: "Variabilidad interespecífica, intraespecífica e intraindividuo en semillas de distintas especies del género Papaver"
# Fecha: 29/07/2019

# Cargar paquetes para el markdown

if (!require(knitr)) install.packages('knitr')
library(knitr)
if (!require(markdown)) install.packages('markdown')
library(markdown)
if (!require(rmarkdown)) install.packages('rmarkdown')
library(rmarkdown)
if (!require(readxl)) install.packages('readxl')
library(readxl)

# Importar datos
datos <- read_excel("datos/datos.xlsx",
                    sheet = "datos2")

# Generar PDF con los resultados del ANOVA
for (i in c(4:length(names(datos)))){rmarkdown::render(input = "scripts/ANOVA.Rmd",
                    output_format = "pdf_document",
                    output_file = paste(i,names(datos[i]), ".pdf", sep='_'),
                    output_dir = "output")}