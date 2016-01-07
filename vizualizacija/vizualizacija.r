# 3. faza: Izdelava zemljevida

source("lib/uvozi.zemljevid.r", encoding = "UTF-8")
library(ggplot2)
library(dplyr)

# Uvozimo zemljevid.
zemljevid <- uvozi.zemljevid("http://biogeo.ucdavis.edu/data/gadm2.8/shp/SVN_adm_shp.zip",
                             "SVN_adm1", encoding = "UTF-8")

rownames(vsota) <- vsota$REGIJE
zemljevid1 <- preuredi(vsota, zemljevid, "NAME_1")


pretvori.zemljevid <- function(zemljevid) {
  fo <- fortify(zemljevid)
  data <- zemljevid@data
  data$id <- as.character(0:(nrow(data)-1))
  return(inner_join(fo, data, by="id"))
}

# Regije na zemljevidu

zemljevid$razveze.odstotki <- zemljevid1$ODSTOTKI
zemljevid2 <- pretvori.zemljevid(zemljevid)

# Zemljevid:

vsota.zemljevid <- ggplot() + geom_polygon(data = zemljevid2, aes(x=long, y=lat, group=group,
                                                         fill=razveze.odstotki),color = "grey30") +
  scale_fill_gradient(low="cyan", high="cyan4") +
  guides(fill = guide_colorbar(title = "Porazdelitev števila razvez po regijah"))

print(vsota.zemljevid)

