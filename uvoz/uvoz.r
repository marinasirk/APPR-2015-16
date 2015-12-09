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

uredi <- function(tabela, x, y, z, max = nrow(tabela)) {
  s <- seq(x, max, z+1)
  tabela[t(matrix(x:max, ncol=length(s))), y] <- tabela[s, y]
  return(tabela)
}

# Zapišimo podatke v razpredelnico razveze1.
razveze1 <- uvozi.razveze1()
razveze1 <- uredi(razveze1, 1, 1, 80)
razveze1 <- razveze1[-seq(1,nrow(razveze1),81),]
razveze1 <- uredi(razveze1, 1, 2, 7)
razveze1 <- razveze1[-seq(1,nrow(razveze1),8),]

# Uredimo tabelo


# TABELA XML

#xml <- file("podatki/razveze-otroci.xml") %>% readlines()


