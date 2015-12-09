# 2. faza: Uvoz podatkov

library(dplyr)
library(gsubfn)

# TABELA CSV  

# Funkcija, ki uvozi podatke iz datoteke druzine.csv  
uvozi.razveze1 <- function() {
  return(read.csv2("podatki/razveze-trajanje.csv",
                   skip = 3,
                   as.is = TRUE,
                   header = FALSE,
                   strip.white = TRUE,
                   col.names = c("REGIJA", "TRAJANJE ZAKONSKE ZVEZE", "LETO", "STEVILO RAZVEZ"),
                   fileEncoding = "UTF-8"))
  }


# Funkcija, ki ponavlja imena
uredi <- function(tabela, x, y, z, max = nrow(tabela)) {
  s <- seq(x, max, z+1)
  tabela[t(matrix(x:max, ncol=length(s))), y] <- tabela[s, y]
  return(tabela)
}

# Uredimo tabelo, zapišemo ponovljena imena in zbrišemo vrstice brez vrednosti.
razveze1 <- uvozi.razveze1()
razveze1 <- uredi(razveze1, 1, 1, 80)
razveze1 <- razveze1[-seq(1,nrow(razveze1),81),]
razveze1 <- uredi(razveze1, 1, 2, 7)
razveze1 <- razveze1[-seq(1,nrow(razveze1),8),]

# Številske spremenljivke spremenimo v številske
razveze1$STEVILO.RAZVEZ <- as.numeric(razveze1$STEVILO.RAZVEZ)

pomurska <- filter(razveze1, REGIJA == "Pomurska")


library(XML)
# TABELA XML

xml <- file("podatki/razveze-otroci.xml") %>% readLines()
razveze1 <- grep("var dataValues", xml, value = TRUE) %>%
  strapplyc('var dataValues = "([^"]+)"') %>% .[[1]] %>%
  strsplit("|", fixed = TRUE) %>% unlist() %>%
  matrix(ncol=10, byrow=TRUE)

