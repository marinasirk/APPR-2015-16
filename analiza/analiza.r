# 4. faza: Analiza podatkov

g <- ggplot(razveze3, aes(y=STEVILO.RAZVEZ, x=LETO)) + geom_point()

# metoda najmanjših kvadratov

g <- g + geom_smooth(method = "lm", formula = y ~ x)

print(g)

# Razvrščanje v skupine

# vsote po regijah in letih

vsote2008 <- filter(razveze2, LETO=="2008")$STEVILO.RAZVEZ %>% sum()
L2008 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2008")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2008")$STEVILO.RAZVEZ %>% sum())/vsote2008*100, 2)

vsote2009 <- filter(razveze2, LETO=="2009")$STEVILO.RAZVEZ %>% sum()
L2009 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2009")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2009")$STEVILO.RAZVEZ %>% sum())/vsote2009*100, 2)

vsote2010 <- filter(razveze2, LETO=="2010")$STEVILO.RAZVEZ %>% sum()
L2010 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2010")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2010")$STEVILO.RAZVEZ %>% sum())/vsote2010*100, 2)

vsote2011 <- filter(razveze2, LETO=="2011")$STEVILO.RAZVEZ %>% sum()
L2011 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2011")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2011")$STEVILO.RAZVEZ %>% sum())/vsote2011*100, 2)

vsote2012 <- filter(razveze2, LETO=="2012")$STEVILO.RAZVEZ %>% sum()
L2012 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2012")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2012")$STEVILO.RAZVEZ %>% sum())/vsote2012*100, 2)

vsote2013 <- filter(razveze2, LETO=="2013")$STEVILO.RAZVEZ %>% sum()
L2013 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2013")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2013")$STEVILO.RAZVEZ %>% sum())/vsote2013*100, 2)

vsote2014 <- filter(razveze2, LETO=="2014")$STEVILO.RAZVEZ %>% sum()
L2014 <- round(c(filter(razveze2, REGIJA == "Pomurska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Podravska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Koroška", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Savinjska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Zasavska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Spodnjeposavska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Jugovzhodna Slovenija", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Osrednjeslovenska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Gorenjska", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Notranjsko-kraška", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Goriška", LETO == "2014")$STEVILO.RAZVEZ %>% sum(),
           filter(razveze2, REGIJA == "Obalno-kraška", LETO == "2014")$STEVILO.RAZVEZ %>% sum())/vsote2014*100, 2)

# vsote po regijah in trajanju zveze

razvrscanje.trajanje <- razveze1 %>% group_by(REGIJA, TRAJANJE.ZAKONSKE.ZVEZE) %>%
  summarise(STEVILO.RAZVEZ = sum(STEVILO.RAZVEZ)) %>% data.frame()

vsotemanj1 <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum()
manj1 <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum(),
           filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="do 1 leta")$STEVILO.RAZVEZ %>% sum())/vsotemanj1*100, 2)

vsote1leto <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum()
eno.leto <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="1 leto")$STEVILO.RAZVEZ %>% sum())/vsote1leto*100, 2)

vsote2leti <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum()
dve.leti <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="2 leti")$STEVILO.RAZVEZ %>% sum())/vsote2leti*100, 2)

vsote3leta <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum()
tri.leta <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="3 leta")$STEVILO.RAZVEZ %>% sum())/vsote3leta*100, 2)

vsote4leta <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum()
stiri.leta <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="4 leta")$STEVILO.RAZVEZ %>% sum())/vsote4leta*100, 2)

vsote5do9let <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum()
pet.devet.let <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="5-9 let")$STEVILO.RAZVEZ %>% sum())/vsote5do9let*100, 2)

vsote10do14let <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum()
let10do14 <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum(),
                         filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="10-14 let")$STEVILO.RAZVEZ %>% sum())/vsote10do14let*100, 2)

vsote15do19let <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum()
let15do19 <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="15-19 let")$STEVILO.RAZVEZ %>% sum())/vsote15do19let*100, 2)

vsote20do24let <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum()
let20do24 <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="20-24 let")$STEVILO.RAZVEZ %>% sum())/vsote20do24let*100, 2)

vsote25let <- filter(razveze1, TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum()
let25vec <- round(c(filter(razvrscanje.trajanje, REGIJA=="Pomurska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Podravska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Koroška", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Savinjska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Zasavska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Spodnjeposavska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Jugovzhodna Slovenija", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Osrednjeslovenska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Gorenjska", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Notranjsko-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Goriška", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum(),
                     filter(razvrscanje.trajanje, REGIJA=="Obalno-kraška", TRAJANJE.ZAKONSKE.ZVEZE=="25 ali več let")$STEVILO.RAZVEZ %>% sum())/vsote25let*100, 2)

# vsote po regijah in številu otrok

razvrscanje.otroci <- razveze2 %>% group_by(REGIJA, ST.OTROK) %>%
  summarise(STEVILO.RAZVEZ = sum(STEVILO.RAZVEZ)) %>% data.frame()

vsotebrez <- filter(razveze2, ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum()
brez.otrok <- round(c(filter(razvrscanje.otroci, REGIJA=="Pomurska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Podravska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Koroška", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Savinjska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Zasavska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Spodnjeposavska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Jugovzhodna Slovenija", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Osrednjeslovenska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Gorenjska", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Notranjsko-kraška", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Goriška", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Obalno-kraška", ST.OTROK=="Brez otrok")$STEVILO.RAZVEZ %>% sum())/vsotebrez*100, 2)

vsote1 <- filter(razveze2, ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum()
en.otrok <- round(c(filter(razvrscanje.otroci, REGIJA=="Pomurska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Podravska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Koroška", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Savinjska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Zasavska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Spodnjeposavska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Jugovzhodna Slovenija", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Osrednjeslovenska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Gorenjska", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Notranjsko-kraška", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Goriška", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Obalno-kraška", ST.OTROK=="Eden")$STEVILO.RAZVEZ %>% sum())/vsote1*100, 2)

vsote2 <- filter(razveze2, ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum()
dva.otroka <- round(c(filter(razvrscanje.otroci, REGIJA=="Pomurska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Podravska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Koroška", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Savinjska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Zasavska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Spodnjeposavska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Jugovzhodna Slovenija", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Osrednjeslovenska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Gorenjska", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Notranjsko-kraška", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Goriška", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum(),
                    filter(razvrscanje.otroci, REGIJA=="Obalno-kraška", ST.OTROK=="Dva")$STEVILO.RAZVEZ %>% sum())/vsote2*100, 2)

vsote3 <- filter(razveze2, ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum()
trije.otroci <- round(c(filter(razvrscanje.otroci, REGIJA=="Pomurska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Podravska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Koroška", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Savinjska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Zasavska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Spodnjeposavska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Jugovzhodna Slovenija", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Osrednjeslovenska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Gorenjska", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Notranjsko-kraška", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Goriška", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum(),
                      filter(razvrscanje.otroci, REGIJA=="Obalno-kraška", ST.OTROK=="Trije")$STEVILO.RAZVEZ %>% sum())/vsote3*100, 2)

vsote4 <- filter(razveze2, ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum()
stirje.vec.otroci <- round(c(filter(razvrscanje.otroci, REGIJA=="Pomurska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Podravska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Koroška", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Savinjska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Zasavska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Spodnjeposavska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Jugovzhodna Slovenija", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Osrednjeslovenska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Gorenjska", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Notranjsko-kraška", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Goriška", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum(),
                        filter(razvrscanje.otroci, REGIJA=="Obalno-kraška", ST.OTROK=="Štirje ali več")$STEVILO.RAZVEZ %>% sum())/vsote4*100, 2)


razvrscanje <- data.frame(REGIJE, L2008, L2009, L2010, L2011, L2012, L2013, L2014,
                          manj1, eno.leto, dve.leti, tri.leta, stiri.leta, pet.devet.let, let10do14, let15do19, let20do24, let25vec,
                          brez.otrok, en.otrok, dva.otroka, trije.otroci, stirje.vec.otroci)


colnames(razvrscanje) <- c("regija",
                           "L2008", "L2009", "L2010", "L2011", "L2012", "L2013", "L2014",
                           "do 1 leta", "1 leto", "2 leti", "3 leta", "4 leta", "5-9 let", "10-14 let", "15-19 let", "20-24 let", "25 ali več let",
                           "brez otrok", "en otrok", "dva otroka", "trije otroci", "štirje ali več otrok")


# RAZVRŠČANJE

razvrscanje[,2] <- as.numeric(razvrscanje[,2])

razvrscanje.norm <- scale(razvrscanje)
k <- kmeans(razvrscanje.norm, 5)

