####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)

# Laboratorio - PIVOTAR A LO LARGO


#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos

#instalar paquete tidyverse  y readr
install.packages("tidyverse")
install.packages("readr")


#Cargar paquete tidyverse y readr
library(tidyverse)
library(readr)

#CARGAR DATOS

library(readr)
Tabla1 <- read_csv("Desktop/ICE 2014.csv")

names(Tabla1)

# 1. Pivotar tabla  "A LO LARGO"
t1_PIVOTANTE = Tabla1 %>%
  pivot_longer(cols = c("Km,0"   ,   "Km,2"   ,   "Km,4"   ,   "Km,6"   ,   "Km,8"    ,  "Km,10"  ,   "Km,12"  ,   "Km,14"  ,   "Km,16"  ,   "Km,18"   ,  "Km,20"  ,   "Km,22" , "Km,24"  ,   "Km,26" ), names_to = "iteracion", values_to = "ranking")

# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.csv")


getwd()
setwd("C:/Users/karit/Desktop")