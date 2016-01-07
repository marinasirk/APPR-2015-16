# 2. faza: Uvoz podatkov

library(knitr)
library(dplyr)
library(gsubfn)
library(ggplot2)
library(rvest)
library(XML)


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

row.names(razveze1) <- c(1:840)
                         
# Številske spremenljivke spremenimo v številske
razveze1$STEVILO.RAZVEZ <- as.numeric(razveze1$STEVILO.RAZVEZ)

# Skupno število ločitev po regijah (2008-2014)
REGIJE <- c("Pomurska", "Podravska", "Koroška", "Savinjska", "Zasavska", "Spodnjeposavska","JV Slovenija",
            "Osrednjeslovenska", "Gorenjska", "Notranjsko-kraška", "Goriška", "Obalno-kraška")

VSOTE <- c(filter(razveze1, REGIJA == "Pomurska")$STEVILO.RAZVEZ %>% sum(),
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

ODSTOTKI <- round(VSOTE/sum(VSOTE)*100, 2)

vsota <- data.frame(REGIJE, VSOTE, ODSTOTKI)

# Graf števila razvez glede na regije
ggplot(vsota, aes(x=REGIJE, y=ODSTOTKI, fill=ODSTOTKI)) + geom_bar(stat = "identity")

# Skupno število ločitev glede na trajanje
ST.LET <- c("do 1", "1", "2", "3", "4", "5-9", "10-14", "15-19", "20-24", "25 ali več")

ST.RAZVEZ <- c(filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "do 1 leta")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "1 leto")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "2 leti")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "3 leta")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "4 leta")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "5-9 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "10-14 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "15-19 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "20-24 let")$STEVILO.RAZVEZ %>% sum(),
               filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE == "25 ali več let")$STEVILO.RAZVEZ %>% sum())

ODSTOTKI <- round(ST.RAZVEZ/sum(VSOTE)*100, 2)

trajanje <- data.frame(ST.LET = factor(ST.LET, levels = ST.LET, ordered = TRUE), ST.RAZVEZ, ODSTOTKI)

# Graf števila razvez glede na trajanje zakonske zveze
ggplot(trajanje, aes(x=ST.LET, y=ODSTOTKI, fill=ODSTOTKI)) + geom_bar(stat = "identity") +
  scale_fill_gradient(low="springgreen4", high="springgreen")


# TABELA HTML

html <- file("podatki/razveze-st-otrok.html") %>% read_html()

razveze2 <- html %>% html_nodes(xpath="//table[1]") %>% .[[1]] %>% html_table(fill = TRUE) %>% data.frame()
Encoding(razveze2[[1]]) <- "UTF-8"
razveze2 <- t(apply(razveze2, 1, function(x) c(rep(NA, sum(is.na(x))), x[!is.na(x)]))) %>% data.frame(stringsAsFactors = FALSE)
razveze2 <- razveze2[-nrow(razveze2),]

colnames(razveze2) <- c("REGIJA", "ST.OTROK", "LETO", "STEVILO.RAZVEZ")


razveze2[,4] <- as.numeric(razveze2[,4])

razveze2 <- uredi(razveze2, 1, 1, 34)
razveze2 <- uredi(razveze2, 1, 2, 6)

ST.OTROK <- c("Brez otrok", "Eden", "Dva", "Trije", "Štirje ali več")

ST.RAZVEZ <- c(filter(razveze2, ST.OTROK == "Brez otrok")$STEVILO.RAZVEZ %>% sum(),
              filter(razveze2, ST.OTROK == "Eden")$STEVILO.RAZVEZ %>% sum(),
              filter(razveze2, ST.OTROK == "Dva")$STEVILO.RAZVEZ %>% sum(),
              filter(razveze2, ST.OTROK == "Trije")$STEVILO.RAZVEZ %>% sum(),
              filter(razveze2, ST.OTROK == "Štirje ali več")$STEVILO.RAZVEZ %>% sum() )

ODSTOTKI <- round(ST.RAZVEZ/sum(VSOTE)*100, 2)

otroci <- data.frame(ST.OTROK = factor(ST.OTROK, levels = ST.OTROK, ordered = TRUE), ST.RAZVEZ, ODSTOTKI)

# Graf števila razvez glede na število otrok
ggplot(otroci, aes(y=ODSTOTKI, x=ST.OTROK, fill=ODSTOTKI)) + geom_bar(stat = "identity")  +
  scale_fill_gradient(low="deeppink4", high="deeppink")


# Tabela razdelitve števila ločitev po letih - MANJKA!
