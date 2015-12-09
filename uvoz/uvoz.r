# 2. faza: Uvoz podatkov

library(dplyr)
library(gsubfn)

# TABELA CSV  
# Definiramo imena stolpcev
stolpci <- c("REGIJA", "TRAJANJE ZAKONSKE ZVEZE", "LETO", "STEVILO RAZVEZ")

# Funkcija, ki uvozi podatke iz datoteke druzine.csv  
uvozi.razveze1 <- function() {
  return(read.csv2("podatki/razveze-trajanje.csv",
                   skip = 3,
                   as.is = TRUE,
                   header = FALSE,
                   strip.white = TRUE,
                   col.names = stolpci,
                   fileEncoding = "UTF-8"))
  }

# Zapišimo podatke v razpredelnico razveze1.
razveze1 <- uvozi.razveze1()

# Uredimo tabelo


# TABELA XML

#xml <- file("podatki/razveze-otroci.xml") %>% readlines()


