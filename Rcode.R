install.packages("readxl"); 
library(readxl)
install.packages("lubridate"); 
library(lubridate)
install.packages("dplyr"); 
library(dplyr)
install.packages("xlsx")
library(xlsx)

DF <- read_excel("C:/Users/bmuniz/Desktop/Ejercicio_Git/Owin_Covid_Data.xlsx")
str(DF)

DF$date <- ymd(DF$date, tz=NULL)
class(DF$date)

fecha_max <- max(DF$date)
fecha_min <- min(DF$date)

totales <- DF %>%
  group_by (iso_code, location) %>%
  summarize(total_cases = sum(new_cases))

write_xlsx(totales, "C:/Users/bmuniz/Desktop/Ejercicio_Git/totales.xlsx")