# Analiza podatkov s programom R, 2015/16
## Analiza razvez zakonskih zvez v Sloveniji
Avtor: Marina Sirk

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2015/16.

## Tematika

V projektu bom analizirala podatke razvez zakonskih zvez od leta 2008 do 2014 glede na regije.Podatke sem dobila s Statističnega urada RS. Prva tabela (v obliki CSV) vsebuje podatke o trajanju zakonske zveze, druga tabela (v obliki HTML) pa o številu vzdrževanih otrok.

Povezavi do tabel:
* http://pxweb.stat.si/pxweb/Dialog/varval.asp?ma=05M4008S&ti=&path=../Database/Dem_soc/05_prebivalstvo/36_Razveze/10_05M40_razveze-RE-OBC/&lang=2
* http://pxweb.stat.si/pxweb/Dialog/varval.asp?ma=05M4010S&ti=&path=../Database/Dem_soc/05_prebivalstvo/36_Razveze/10_05M40_razveze-RE-OBC/&lang=2

Moj cilj je ugotoviti, kako na razveze vpliva trajanje zakonskih zvez in število otrok ter kje so ločitve najpogostejše.

## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`. Ko ga prevedemo,
se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Zemljevidi v obliki SHP, ki jih program pobere, se
shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Spletni vmesnik

Spletni vmesnik se nahaja v datotekah v mapi `shiny/`. Poženemo ga tako, da v
RStudiu odpremo datoteko `server.R` ali `ui.R` ter kliknemo na gumb *Run App*.
Alternativno ga lahko poženemo tudi tako, da poženemo program `shiny.r`.

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `maptools` - za uvoz zemljevidov
* `sp` - za delo z zemljevidi
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `httr` - za pobiranje spletnih strani
* `XML` - za branje spletnih strani
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)
