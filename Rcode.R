install.packages("readxl"); 
library(readxl)
install.packages("lubridate"); 
library(lubridate)
install.packages("dplyr"); 
library(dplyr)
install.packages("xlsx")
library(xlsx)

DF <- read_excel("C:/Users/bmuniz/Desktop/Ejercicio Git/Owin_Covid_Data.xlsx")
str(DF)