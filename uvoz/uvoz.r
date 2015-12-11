# 2. faza: Uvoz podatkov

library(dplyr)
library(gsubfn)
require(ggplot2)

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

# Skupno število ločitev po regijah (2008-2014)
regije <- c("Pomurska", "Podravska", "Koroška", "Savinjska", "Zasavska", "Spodnjeposavska","JV Slovenija",
            "Osrednjeslovenska", "Gorenjska", "Notranjsko-kraška", "Goriška", "Obalno-kraška")

vsote <- c(filter(razveze1, REGIJA == "Pomurska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Podravska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Koroška")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Savinjska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Zasavska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Spodnjeposavska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Jugovzhodna Slovenija")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Osrednjeslovenska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Gorenjska")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Notranjsko-kraška")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Goriška")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze1, REGIJA == "Obalno-kraška")$STEVILO.RAZVEZ %>% sum() )

odstotki <- round(vsote/sum(vsote)*100, 2)

vsota <- data.frame(regije, vsote, odstotki)

# Nariši graf do konca !
ggplot(vsota, aes(x=regije, y=odstotki, color=odstotki)) + geom_point()


# Skupno število ločitev glede na trajanje
st.let <- c("do 1", "1", "2", "3", "4", "5-9", "10-14", "15-19", "20-24", "25 ali več")

st.razvez <- c(filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "do 1 leta")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "1 leto")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "2 leti")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "3 leta")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "4 leta")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "5-9 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "10-14 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "15-19 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "20-24 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "25 ali več let")$STEVILO.RAZVEZ %>% sum())

odstotki <- round(st.razvez/sum(vsote)*100, 2)

trajanje <- data.frame(st.let, st.razvez, odstotki)

# Nariši graf !!!
ggplot(trajanje, aes(x=st.let, y=odstotki)) + geom_point()



library(XML)
# TABELA XML

xml <- file("podatki/razveze-otroci.xml") %>% readLines()
razveze1 <- grep("var dataValues", xml, value = TRUE) %>%
  strapplyc('var dataValues = "([^"]+)"') %>% .[[1]] %>%
  strsplit("|", fixed = TRUE) %>% unlist() %>%
  matrix(ncol=10, byrow=TRUE)

