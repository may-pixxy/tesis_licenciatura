# Tablas y graficas R 
# Adicionar linea de promedio a cada una de las graficas 
# Modificar nombre de las graficas, hacerlas mas precisas 
library (ggplot2)

# SIMULACIONES DE TEMPERATURA *SIN* PH 
spp3 <- read.csv("03_Output/simulacion_1/3_50spp3/tabla_producto_de_redes.csv")
spp4 <- read.csv("03_Output/simulacion_1/5_50spp4/tabla_producto_de_redes.csv")
spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/tabla_producto_de_redes.csv")


# SIMULACIONES DE TEMPERATURA *CON* PH 
spp3tph <- read.csv("03_Output/simulacion_1/18_rph_50spp3/tabla_producto_de_redes.csv")
spp4tph <- read.csv("03_Output/simulacion_1/19_rph_50spp4/tabla_producto_de_redes.csv")
spp5tph <- read.csv("03_Output/simulacion_1/20_rph_50spp5/tabla_producto_de_redes.csv")

View(spp3)
?ggplot

?geom_smooth
#### visualizacion de la tabla ####
ggplot(data = spp3tph, aes(y = porcentaje_nodos50, x = Temps)) +
  geom_line(color = "blue4", lwd = 0.8) +
  geom_point(color = "blue4", size =2.5) +
  xlab("Temperatura") + ylab("Porcentaje de nodos conectados")+
  theme_classic()+
  geom_smooth(method = "loess", color = "red3", se = F) + 
  ggtitle("Porcentaje de nodos conectados (M = 0.08/DE = 0.04) LVTpH")+
  theme(plot.title = element_text(hjust=0.5, size = 18, face = "bold"),text=element_text(size=15))


# Porcentaje de conectividades
ggplot(data = spp5tph, aes(y = porcentaje_conexiones_50, x = Temps)) +
  geom_line(color = "blue4", lwd = 0.8) +
  geom_point(color = "blue4", size = 2.5) +
  xlab("Temperatura") + ylab("Porcentaje de conectividades ")+
  theme_classic() +
  ggtitle("Porcentaje de conectividades (M = 0.64/DE = 0.32) LVTpH")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,298) + ylim(0,1)

# Numero de clusters 
ggplot(data = spp5tph, aes(y = clustconectados50, x = Temps)) +
  geom_line(color = "darkred", lwd = 0.8) +
  geom_point(color = "darkred", size = 2.5) +
  xlab("Temperatura") + ylab("Número de clusters")+
  theme_classic() +
  ggtitle("Número de Clusters conectados (M = 0.64/DE = 0.32) LVTpH")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,298) + ylim(0,15)

####################################################################################################
# LINE PLOTS #
library(ggplot2)
lvt_3 <- read.csv("01_RawData/LVTPH_3.csv")
lvt_4 <- read.csv("01_RawData/LVTPH_4.csv")

ggplot(lvt_4, aes(x=Temp, y=Number.of.edges, colour = Red)) +
  geom_line(aes(linetype=Red))+
  geom_point()+
  xlab("Temperatura") + ylab("Número total de interacciones entre especies")+
  theme_classic() +
  ggtitle("LVTpH (4) - Número total de interacciones entre especies")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,307) + ylim(0,250)


ggplot(lvt_4, aes(x=Temp, y=Avg..number.of.neighbors, colour = Red)) +
  geom_line(aes(linetype=Red))+
  geom_point()+
  xlab("Temperatura") + ylab("Promedio de conexiones por nodo")+
  theme_classic() +
  ggtitle("LVTpH (4) - Promedio de conexiones por nodo")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,307) + ylim(0,18)

ggplot(lvt_4, aes(x=Temp, y=Connected.components, colour = Red)) +
  geom_line(aes(linetype=Red))+
  geom_point()+
  xlab("Temperatura") + ylab("Número de subredes aisladas")+
  theme_classic() +
  ggtitle("LVTpH (4) - Número de subredes aisladas")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,307) + ylim(0,42)
