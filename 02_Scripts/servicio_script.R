# Mendoza Velazquez Mayra 
# servicio :c 

# Bases de datos dentro del estudio 
# Para comunidades de vida libre 
# LMO
# ANT
# TARA 
# SOLA
# SPOT 

# Muestras no fraccionadas 
# PICO
# P15 GO-SHIP
library(deSolve)
library (ggplot2)
library(dplyr)
library(viridis)
library(ggpubr)


alldata <- read.csv("01_RawData/All_data.csv")
View(alldata)
# Esta es la base de datos con la que trabajan dentro del articulo
# contiene ya todos los datos de las bases que juntaron (son las que enliste
# arriba)


## RECREAR RESULTADOS DEL ESTUDIO ##
LMO <- subset (alldata, Dataset == "LMO")
View(LMO)

# Trabajo sobre esta base de datos para realizar la primera gráfica 
library (tidyverse)
class(LMO$Date) 
# la columna de date la lee como caracter, debo hacer que la lea como fecha
# pero la estructura de esa columna esta rara (tampoco he usado demasiado 
# fechas)

as.Date(LMO$Date)

prueba <- LMO %>%
  mutate(agno = paste0("20", str_extract(sprintf("%s", LMO$Date), "\\d{2}$")))

View(prueba)
# con esto ya tengo el añoporque lo asigne a una nueva columna, lo que hice 
# fue tomar los ultimos dos digitos y agregarle a esos "20" al inicio, con esto 
# cree los años que utiliza en el articulo y los puse en una sola columna


head(as.Date(prueba$Date, format = "%d/%m/%Y"))
prueba$fecha <-format(as.Date(prueba$Date, format = "%m/%d/%Y"))
View(prueba)
# ya tengo en el objeto prueba una columna con las fechas, voy a extraer, mes y dia 
# en nuevas columnas y colocarlas luego en otra columna para tener la fecha real 
# porque ya tengo la columna de agno que cree anteriormente, ahora solo tomaria dia y mes
# para tenerlos separados y luego los junto en una columna que R si lea como date 

prueba <- prueba %>% 
  mutate(dia=lubridate::day(prueba$fecha),
         mes=lubridate::month(prueba$fecha))
prueba
prueba$Fecha <- as.Date(with(prueba, paste(agno, mes, dia,sep="-")), "%Y-%m-%d")
# ya tengo una columna que tiene la fecha bien escrita, tome los datos que extraje en 
# distintas columnas y los junte finalmente en la ultima columna "Fecha" que ya los tiene
# ordenados

class(prueba$Fecha)
# y ademas se lee como una fehca, puedo intentar hacer los boxplot asociados a los valores
# de LMO que obtienen dentro del articulo 

LMO <- prueba[,-c(34:37)]

#Ya tengo una base que solo tiene los datos que me importan, quite el dia, mes y agno que 
# use para podper crear la fecha real. 

#Importante: uso LMO como base porque es la base que tiene fechas, no todas las bases de datgos
# que recolectaron tienen la fecha, quiza por ello tambien fue esta la que utilizaron para las 
# graficas de tiempo del articulo 

####### MAT SUPLEMENTARIO #######
###### BOXPLOTS ######
# 1. mes vs temperatura LMO (FIGURA S7)

ggplot(prueba) +
  geom_boxplot(aes(y=Temperature,
                   x=reorder(format(prueba$Fecha,'%m'),prueba$Fecha, decreasing =T),
                   fill=format(prueba$Fecha,'%Y'))) +
  xlab('Month') + guides(fill=guide_legend(title="Temperature")) +
  theme_bw()
# ya me salio pero en desorden (los meses salen todos revueltos :( )


ggplot(prueba,aes(x = Fecha, y = Temperature,
           group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Temperatura") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")

# Este muestra la relacion entre temperatura y el año, tomando en cuenta
# los meses, si se ve ciclicidad en los datos, aunque resultara mucho mejor 
# contener toda esta info en una sola grafica para ver mas bien en funcion del 
# agno la ciclicidad de los datos (que es lo que hacen en el articulo)
#aunque asi igual puede apreciarse la ciclicidad y ademas tenemos dividido todo 
# por el año correspondiente 

# tener esta informacion de forma grafica ayuda, en este caso, a establecer la 
# ciclicidad experimentada en los datos recolectados, ya que los tenemos separados por
# año podemos ver las variaciones de temperatura que se alcanzan en los datos que es justo
# la variable de interes dentro del articulo 

# 2. mes vs DOC LMO (FIGURA S7)

ggplot(prueba,aes(x = Fecha, y = DOC,
                  group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "DOC") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")

# Lo primero que hay que resaltar es que para los datos de DOC hay varios
# agnos que no tienen datos entonces es dificil ver la ciclicidad o la alteracion por agno
# de los valores de carbono organico disuelto por agno
# voy a eliminar los datos de esos agnos para observar mejor la grafica 

docvalues <- subset(prueba, agno == c("2012", "2013", "2015", "2016"))
# con esto ya solo tengo los renglones de los agnos que se que tienen datos que 
# me sirven para la observacion de las alteraciones de interes 
# volvere a hacer los boxplots por agno 

ggplot(docvalues,aes(x = Fecha, y = DOC,
                  group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "DOC") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")
# se ve mucho mejor una vez quitamos todos los agnos que no tienen datos
# se aprecia ciclicidad en los datos pero no podria decir que es igual de
# consistente que la experimentada por la temperatura, porque los datos de temp
# se apreciaban mucho mas homogeneos sin importar el agno, y aqui aunque 
# agnos 2012 y 2013 tienen una LIGERA semejanza, lo cierto es que la varianza entre
# agnos es demasiada. Esto podria deberse a las bollas con las que tomaron los datos
# (????) tal vez fueron distintas en cada agno o puede deberse precisamente a la 
# alteracion de la temperatura que estos valores de carbono disuelto varien 

# de estas la grafica mas parecida a lo encontrado en figura S7 es el agno 2013

# 3. mes vs nitrato LMO (FIGURA S7)
ggplot(prueba,aes(x = Fecha, y = Nitrate,
                     group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Nitrate") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")
# voy a quitar nuevamente agnos sin datos

nitratevalues <- subset(prueba, agno == c("2011", "2012", "2013", "2015"))


ggplot(nitratevalues,aes(x = Fecha, y = Nitrate,
                     group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Nitrate") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")
# aqui ya se aprecia muchisimo mas la ciclicidad delos datos 
# siento que separar los datos por agnos es mucho mejor para apreciar las 
# variaciones, porque en las graficas que ponen en esta figura S7 se aprecia 


# 4. mes vs amonio LMO (FIGURA S7)
ggplot(prueba,aes(x = Fecha, y = Ammonium,
                         group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Amonio") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")

# aqui yo quitaria definitivamente datos desde 2014, no se si ello cuenta como
# cucharear pero hay agnos donde no se observa realmente una gran recoleccion 
# de datos 

amonvalues <- subset(prueba, agno == c("2011", "2012", "2013", "2015", "2018"))
ggplot(amonvalues ,aes(x = Fecha, y = Ammonium,
                  group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Amonio") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")
# viendo los datos por agno asi se ve que las fluctuaciones de nivel de amonio no son}
# tan marcados o ciclicos como los ejemplos anteriores 
# hasta ahora no he visto alguna otra grafica que presente el mismo comportamiento 
# pero quiza este correlacionado con otras variables

## NOTA. No recuerdo haber leido que hicieran algun analisis de correlacion de los datos
# pero estaria interesante (??)** 


# 5. mes vs phosphate (S7 fig)
ggplot(prueba,aes(x = Fecha, y = Phosphate,
                  group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Fosfato") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")


phosphatevalues <- subset(prueba, agno == c("2011", "2012", "2013", "2015", "2018"))
ggplot(phosphatevalues,aes(x = Fecha, y = Ammonium,
                  group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Phosphate") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")
# no veo ciclicidad y seguramente es por hacer las graficas poragno, quiza reuniendo
# todos los datos y solo haciendo un solo boxplot se viera 
# pero hare la ultima grafica y quisiera ver analisis de correlacion de los datos al menos 
# de la base de forma general 

# BASE "prueba" SOLO CORRESPONDE A LMO *** A RECORDAR ***

# 6. mes vs clorofila 
ggplot(prueba,aes(x = Fecha, y = Chlorophyll,
group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Clorofila") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")

clorofilavalues <- subset(prueba, agno == c("2011", "2012", "2013", "2015", "2016"))
ggplot(clorofilavalues,aes(x = Fecha, y = Chlorophyll,
                           group = lubridate::floor_date(Fecha, "month"))) +
  geom_boxplot(alpha = 0.5) +
  labs(x = "Años", y = "Clorofila") +
  scale_x_date(date_breaks = "1 month", date_labels =  "%b %Y") +
  scale_y_continuous(trans = scales::log10_trans(),
                     breaks = 10^(-20:20),
                     labels = scales::label_number_si()) +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  facet_wrap(~agno, nrow = 1, scales = "free_x")

# aqui si se ve como los niveles de clorofila suben y bajan mas o menos por el mismo mes 
# junio es mas o menos el mes donde empiezan a subir de nuevo los niveles 
# presentando al menos en julio niveles igual bajos de clorofila 

##### S8 #####
# BASE DE DATOS: ANT 
# 5 profundidades
# x vs y donde x es la latitud y en y tenemos la temperatura 
# la utilizan para ver la variacion de temperatura en funcion de la latitud 
# se puede observar ciclicidad, como sin importar laprofundidad a la que se encuentre 
# la ciclicidad se mantiene 

ANT_28 <- subset (alldata, Dataset == "ANT")

ANT_28 %>%
  ggplot( aes(x = Latitude, y = Temperature, group = Depth, color =Depth)) +
  geom_line()

# Esta es una grafica bastante basica con los datos que tengo dentro de la base
# se observa la misma tendencia en los datos que la mostrada en el material 
# suplmentario 
# **seccionar por profundidad 

##### S9 #####
TARA <- subset (alldata, Dataset == "TARA")
View(TARA)
library(viridis)

tar1 <- ggplot(TARA, aes( x = Latitude, y = Depth, color = Temperature)) +
  geom_point(size = 2)
tar1 <- tar1+scale_color_gradient(low="blue", high="red") +
  scale_y_reverse() +
  xlab("Latitude (°)") + ylab("Depth (m)")

tar2 <- ggplot(TARA, aes( x = Latitude, y = Depth, color = Oxygen)) + 
  geom_point(size = 2)
tar2 <- tar2 + scale_y_reverse() +
  xlab("Latitude (°)") + ylab("Depth (m)") + 
  scale_color_viridis(discrete = F) +
  theme_classic()

tar3 <- ggplot(TARA, aes( x = Latitude, y = Depth, color = Phosphate)) + 
  geom_point(size = 2)
tar3 <- tar3+ scale_y_reverse() +
  xlab("Latitude (°)") + ylab("Depth (m)") + 
  scale_color_viridis(discrete = F, option = "A") +
  theme_classic() 

tar4 <- ggplot(TARA, aes( x = Latitude, y = Depth, color = Nitrate_Nitrite)) + 
  geom_point(size = 2)
tar4 <- tar4 + scale_y_reverse() +
  xlab("Latitude (°)") + ylab("Depth (m)") + 
  scale_color_viridis(discrete = F, option = "E") +
  theme_classic() 

# juntarlos todos en la misma grafica #

taradots <- ggarrange(tar1,
                    tar2,
                    tar3,
                    tar4,
                    nrow = 2,
                    ncol = 2) 
taradots

# Aqui tenemos algo muy cercano a la figura S9 
# Cada una de las graficas representa la relacion profundidad y latitud 
# variables asociadas a una tercera, precisamente para evaluar o determinar
# las condiciones en que se encuentran las muestras recogidas 

# Tendencia de los datos 
# 1a grafica - temperatura, en latitudes cercanas a 0° la temperatura es alta
# pero mientras se aleja de estos valores la temperatura baja, en este caso se 
# puede ver que a mayores latitudes (+) la temperatura comienza a rondar los 15-20°
# pero a latitudes menores (-) la temperatura llega hasta el 0 
# conforme aumenta la profundidad, la temperatura baja, se observa en el cambio de 
# colores, siendo la temperatura en tendencia 0-10°

# 2a grafica, conforme aumenta la latitud (+) los niveles de oxigno bajan 
# lo que me resulta extraño en esta grafica es que llegados a una profundidad 
# de 500 aproximadamente, los niveles de oxigeno bajan a valores menores de 100 
# y mientras aumenta la profundidad se reestablecen estos valores
# NOTA: Esto ya tiene sentido, en micro marina vimos informacion respecto a esto 
# es normal que los niveles de oxigeno bajen y luego se reestablezcan, terminan restableciendose
# por el agua de fondo, que por cuestiones como la turbulencia recupera el oxigeno 
# "perdido", siendo el oxigeno en la superficie provisto por especies capaces de realizar la fotosintesis
# Con estos datos, al menos con eta grafica podemos ver el reflejo de lo que se sabe de las cuestioned
# oceanicas



#################
####### ARTICULO #######
# Regresion de los datos que tengo en la base 
# figura 1.E 

View(alldata)
regr <- subset(alldata, Dataset %in% c("LMO", "ANT","TARA"))
View(regr)

# use %in% en lugar de == para que seleccionara distintos renglones con los valores
# que me interesan 

# seleccione todos los renglones que pertenezcan a las bases de datos que
# interesan 
# hare regresion linear con esta base de datos 

RLSc <- lm (Estimate ~ Temperature, regr)
summary(RLSc)
# Intercept - 1.272881
# Temperature - 0.020666
# R2 de 01% no explica nada de la variacion 

# aqui primero estoy tomando en cuenta todos los renglones de ESTIMATE
# pero siento/creo deberia tomar en cuenta unicamente los que pertenecen
# a MCN para que tenga sentido, igual lo voy a intentar 

rg1 <- ggplot (regr, aes (x = Temperature, y = Estimate, col = Dataset)) +
  geom_point (shape = "circle") +
  geom_smooth (method = "lm", se = F, col = "purple", lty = 3)

rg1
# tiene demasiados datos, contiene las tres bases de datos
# voy a aislar solamente aquellas que sean de MCN 

regr2 <- subset (regr, Growth_measure == "WMCN")
# ahora tengo una base de datos con las bases que me importan y ademas
# solo con los datos de MCN que son los que usare para la regresion 

RD2 <- lm (Estimate ~ Temperature, regr2)
summary(RD2)

# intercept - 2.5009907
# slope - -0.0169269s
# R2 = 10% de la varianza se explica con el modelo 

rg2 <- ggplot (regr2, aes (x = Temperature, y = Estimate, col = Dataset)) +
  geom_point (shape = "circle") +
  geom_smooth (method = "lm", se = F, col = "purple", lty = 3)
rg2

RD3 <- lm (Estimate ~ Temperature + Dataset, regr2)
summary (RD3)
# intercept - 2.5181772
# slope - -0.0149073
# R2 = 15% de la varianza es explicada x este modelo
# hago grafica en base a estos datos 

grafica_reg3 <- ggplot (regr2, aes (x = Temperature, y = Estimate, col = Dataset)) +
  geom_point () +
  geom_smooth (method = "lm", se = F, fullrange = T) +
  geom_abline (intercept = 2.5181772, slope = -0.0149073)
grafica_reg3


# La regresion se ve muuuy parecida, aunque no identica 
# creo que trabajaron con menos datos de los que estan en la base 
# NOTA: BUSCAR EXCLUSION DE DATOS, ALGO QUE HAYAN HECHO PARA DESCARTAR 
# CIERTOS VALORES DE LA BASE, porque sino los resltados no se parecen 
# en nada 

##################################
# Relacion entre temperatura y copias de RNAr # 
# LMO #
View(LMO)
# Growth_measure = weighted mean copy number (WMCN)
# Temperatura 
# agno 

names(LMO)

LMO_MCN <- subset(LMO, Growth_measure == "WMCN") 
View(LMO_MCN)
LMO_TG <- ggplot(LMO_MCN, aes( x = Temperature, y = Estimate)) +
  geom_line( color="#69b3a2", size=1, alpha=0.9, linetype=2) +
  ggtitle("Relacion temperatura-copias RNAr")

LMO_TG
# Pero esta es solol la relacion entre temperatura y copias de rnar 
# nota a tener en cuenta: llegzndo a 20° se podria decir que hay menor cantidad de 
# copias de rnar 

# Para obtener una grafica parecida a la que ponen en el articulo 
# necesito sacar el rolling average 
# tomando en cuenta el estimate 
# ello lo repetire con cada una de lasbases usadas en el articulo 

install.packages("quantmod")
library(TTR)
library(quantmod)
LMO_MCN <- LMO_MCN %>%
  mutate(rolling_avg = rollmean(Estimate, k=7, fill=NA, align='right'))
View(LMO_MCN)

# Que es esto: es el calculo del rollinmg average para los datos de 
# estimate, que corresponden al numero de copias de RNAr segun la fecha 

LMO_Tcopy <- ggplot(LMO_MCN, aes( x = Temperature, y = rolling_avg)) +
  geom_line( color="#69b3a2", size=1, alpha=0.9, linetype=2) +
  ggtitle("Relacion temperatura-copias RNAr")
LMO_Tcopy 
# Esta grafica es de temperatura y el rolling average que calcule antes
# esperaba que al conservar todas las temperaturas pudiera ver algun
# tipo de patron para relacionar el aumento de temperatura y el RAV de 
# numero de copias

# la grafica se parece a la anterior pero podemos notar que los datos 
# varian y ello es por el rolling average que calcule antes 
# el rolling average toma (en este caso) los 7 digitos anteriores y calcula 
# el promedio de estos, despues de ello se recorre un numero y vuelve a calcular
# el promedio de los 7 siguientes y asi continua 

LMO_MCN <- LMO_MCN %>%
  mutate(ravtem = rollmean(Temperature, k=7, fill=NA, align='right'))

# Ahora calculo el rolling average de la temperatura (para poder hacer
# la primera grafica que se muestra en el articulo)
# de igual forma tomo los anteriores 7u numeros a la temperatura que quiero
# calcular

LMOTDt <- ggplot(LMO_MCN, aes( x = Fecha, y = ravtem)) +
  geom_line( color="#69b3a2", size=1, alpha=0.9, linetype=2) +
  ggtitle("Date vs Temperature")
LMOTDt

# Ahora, tal como se muestra en la figura 1 del articulo F1B especificamente
# hago una grafica de fecha vs rolling average de temperatura 
# igual que en esta grafica del articulo vemos como se forma una especie de 
# patron en cuanto a la variacion de las temperaturas por agno 
# ahpra hare lo mismo con el raverage del numero de copias estimado 


LMOMCNDt <- ggplot(LMO_MCN, aes( x = Fecha, y = rolling_avg)) +
  geom_line( color="#69b3a2", size=1, alpha=0.9, linetype=2) +
  ggtitle("Date vs Temperature") + ylab("Temperatura")
LMOMCNDt
# aqui tambien vemos que se pueden empezar a formar curvas con los datos 
# del numero de copias, sin embargo puedo resaltar que no se ve tan parecida
# a la expuesta en el articulo aun si estoy tomando los 7 numeros que ellxs 
# indican, voy a intentar hacer el rolling average con mas numeros 

LMO_MCN <- LMO_MCN %>%
  mutate(rolling_avg = rollmean(Estimate, k=12, fill=NA, align='right'))

LMOMCNDt2 <- ggplot(LMO_MCN, aes( x = Fecha, y = rolling_avg)) +
  geom_line( color="#69b3a2", size=1, alpha=0.9, linetype=2) +
  ggtitle("Date vs Temperature") + ylab("Copias RNAr")
LMOMCNDt2

# Intentare, unir estas dos graficas que hice para ver si tal como en
# la figura, estos coinciden 

library(ggpubr)

tcdate <- ggarrange(LMOTDt,
                           LMOMCNDt2 ,
                           nrow = 2,
                           ncol = 1) 
tcdate

# aunque no coinciden por completo, si es cierto que puede verse coincidencia
# de los datos de temperatura y copias de RNAr 
# pienso que la razon por la que en esta grafica no coinciden tanto los datos como en
# la mostrada en el articulo es quiza porque el rolling average que use para los 
# datos de copias de RNAr es de 12 en lugar de 7, pero con 7 numeros no creo que 
# se aprecie tanto la curvatura de los datos (es esto cuchareo?)

# Ahora hare lo mismo para la figura 1C del articulo con la base de ANT 
View(alldata)
ANT_28 <- subset (alldata, Dataset == "ANT")
ANT_28

# En este caso no contamos con datos de fecha para la base ANT, por ello utilizan 
# la latitud 
ANTMCN <- subset (ANT_28, Growth_measure == "WMCN")
# Ya tengola base solo con los datos de las copias de RNAr 


ANTemLat <- ggplot(ANTrolls, aes( x = Latitude, y = Temperature)) +
  geom_line( color="#69b3a2", size=1, alpha=0.9, linetype=2) +
  ggtitle("Latitud vs Temperatura") + ylab("Temperatura")
ANTemDt
# La grafica es muy parecida a la que se muestra enel articulo, varia por lo puntos 
# que se toman para hacer la curva, pero se mantiene la forma inicial de la grafica 

# average across five depths 
ANMCNLat <- ggplot(ANTrolls, aes( x = Latitude, y = Estimate)) +
  geom_line( color="#69b3a2", size=1, alpha=0.7, linetype=1) +
  ggtitle("Latitud vs copias RNAr") + ylab("copias RNAr")
ANMCNLat
rm(ANMCNLat)
# no se parec**** checar (average across five depths)
# hacen grupos ? 


# TARA #
TARA <- subset (alldata, Dataset == "TARA")

TARAMCN <- subset(TARA, Growh_measure = "WMCN", Latitude >= 0 )
TARAMCN <- subset (TARAMCN, Latitude <= 40)

View(TARAMCN)
# Hago esto porque en el pie de figura del articulo la leyenda indica que hicieron 
# el rolling average solamente para las muestras que corresponden a 0° - 40°S 
# por eso de TARA selecciono las que tienen WMC como growth measure y ademas 
# latitud de 0 a 40°, ahora sigue sacar el rolling average 


TARArolls <- TARAMCN %>%
  mutate(avgtem = rollmean(Temperature, k=19, fill=NA, align='right'))

TARArolls <- TARArolls %>%
  mutate(avgmcn = rollmean(Estimate, k=20, fill=NA, align='right'))

View(TARArolls)
# Ahora tengo la base con el rolling average de la temperatura y copias de 
# rnar 
# Puedo ya hacer la grafica que me de los puntos de referencia. 

TARArolls  %>%
  ggplot( aes(x = Depth, y = Temperature )) +
  geom_line() +
  geom_point()

# Esta es la primer grafica con temperatura y profundidad y si bien se aprecia
# algo parecido a lo expuesto en el articulo esta grafica no es identica, 
# es parecida porque conforme aumenta la profundidad la temperatura baja y ello se
# aprecia en la grafica

TARArolls  %>%
  ggplot( aes(x = Depth, y = avgmcn )) +
  geom_line() +
  geom_point()

# esta grafica corresponde a los datos del rolling average del estimado de copias 
# de rnar que aparecen en la base, pero en este caso esta grafica no se parece nada
# a la  que se encuentra en el articulo, probablemente por la cantidad de na's que existen en
# la base 
# creo que lo mejor seria eliminar los renglones que no tengan valor en estimate y 
# asi calcular el rolling average porque sino la grafica me sale con la parte de perdids 
# de datos 

TARAsna <- subset(TARAMCN, (!is.na(TARAMCN[,13])))
# en teoria ya quite todos los renglones que no tienen valor en estimate, quiza ello 
# ayude a que no me salga la grafica como antes 

TARArolls2 <- TARAsna %>%
  mutate(avgmcn = rollmean(Estimate, k=19, fill=NA, align='right'))
View(TARArolls)

TARArolls2  %>%
  tail(25) %>%
  ggplot( aes(x = Depth, y = avgmcn )) +
  geom_line() +
  geom_point()
# Con tail() lo que estoy haciendo es limitando la cantidad de observaciones quesalen en
# la grafica y si bien en la profundidad inicial la grafica es parecida a lo que aparece en 
# el articulo la tendencia de los datos no es la misma
# porque en este caso si bien la cantidad de copias ronda los 1.55 tanto aqui como en la figura 
# delarticulo, en este caso los datos comienzan a bajar en cierta profundidad cuando en el 
# articulo estos datos de copias realmenter suben rondando el 2 


TARArolls2  %>%
  tail(50) %>%
  ggplot( aes(x = Depth, y = Estimate )) +
  geom_line() +
  geom_point()

# Esta grafica se """"asemeja"""" a lo mostrado en el articulo puesto que mientras 
# aumenta la profundidad la cantidad de copias aumenta tambien, solo que en este caso las 
# forma que se alcanza no es identica a la del articulo, aunque los datos is comienzan a subir 
# hasta rondar valores cercanos a 2 parecido a lo que se observa en el articulo 
# en este caso, asi como en el anterior necesito utilizar tail porque si dejo que aparezcan
# todas las observaciones del articulo realmente no puedo ver alguna tendencia en los datos 

### Figura 2 ###
# MODELO :ccccccccc # 

# Modelo lotka volterra # 
library(deSolve)

LotVmod <- function (Time, State, Pars) {
  with(as.list(c(State, Pars)), {
    dx = x*(alpha - beta*y)
    dy = -y*(gamma - delta*x)
    return(list(c(dx, dy)))
  })
}

pars <- c(alpha = 2, 
          beta = .5, 
          gamma = .2, 
          delta = .6)

state <- c(x = 10, y = 10)

time <- seq(0, 100, by = 1)

out <- as.data.frame(ode(func = LotVmod, y = state, parms = pars, times = time))

matplot(out[,-1], type = "l", xlab = "time", ylab = "population")
legend("topright", c("Conejitos", "Zorros"), lty = c(1,2), col = c(1,2), box.lwd = 0)

# este es un modelo tradicional lotka volterra 
# ellos adicionan otros parametros dentro del modelo 


#####
# Arrhenius model 
# r = (a * R * e)^E/(Kb*T)
# parametros
# a = 1.7x10^5
# R = 1 y 3 
# e = 2,7182818284
# E = 0.33 eV
# T = rango de 278-198 
# Kb = 1.3806x10^-23

# Para este modelito, solo utilizo una base con temperaturas que van de 0-50 
# porque busco recrear la figura del modelo arrhenius del material suplementario

tm <- 278:298
a * R* exp(-E/(Kb * 278))

arrhmd <- function (tm, R){
  a <- 1.7e5
  e <- 2.7182818284
  E <- 0.33
  Kb <- 1.3806e-23
  
  
  for (i in 1:length(tm)){
  ri = a * R* exp(-E/(Kb * tm[i]))
  print(ri)
  }   
}
 ri
arrhmd(tm, R)
xa <- a*R
xae((E)/(Kb * 26))

### ELECTRON VOLT 

# raro 

tm <- 0:25
R <- 1
arrhmd2(tm, R)
# exp funcion **
# TODOS ME SALEN INFINITOOOOOS POR QUEEE? 
# Ya realice la operacion a mano y tambien todos me salen infinitos 
# use especificamente los valores que fueron mencionados en los resultados
# del articulo, para los valores de tm tome en cuenta la grafica que ellxs describen
# en el material suplementario (FIG S1) y R lo tome de la misma figura 
# para comparar 2 especies con un numero de copia distinto


arrhmd2 <- function (tm, R){
  a <- 1.7e5
  E <- 0.33
  Kb <- 1.3806e-23
  
  
  for (i in 1:length(tm)){
    ri = (a * R)^((E)/(Kb * tm[i]))
    print(ri)
  }   
}

arrhmd2(tm, R)

# INFINITOOOO :cccccccccc


# MODELO 
# Problema a resolver: los valores infinitos que son arrojados por la 
# ecuacion anterior 

# ri (1 - Xi - aij*Xj)-S 
# Donde 
# ri - tasa de crecimiento maxima (que tendria que ser sacada 
# con la formula anterior)
# Xi y Xj - Abundancia de la especie i o j 
# S - Tasa de muerte (a la que estan sometidas ambas especies)
# aij / aji - tasa a la que especie 1 inhibe a spp 2 
# este ultimo parametro representa la ompetencia entre spp 


md1 <- ri (1 - xi - aij * xj) - s
md2 <- ri (1 - xj - aji * xi) - s

# Valores dentro del modelo (S1)

ri # Tendria que tener un vector con los valores 
# para las temperaturas como en la figura que ellos 
# realizaron pero no obtengo nada de esto 
xi 
xj 
aij <- 0.6
aji <- 2.3 
# Estos valores los obtuvieron de una distribucion normal 
# y los rnar los tomaron de una distribucion geometrica 
S <- 0.1/
  
# valores FIGURA 2B 
aij <- 0.5 
# distribucion geometrica del parametro p para las copias de RNAr 
# se coloco a 0.8 
# distribucion geometrica (1-p)^(k-1) * p 
# donde
# p - fraccion de poblacion con un numero de copia inicial de 1 
# k - numero de copias 

S <- 0.07 


# Tercera descripcion de datos 
aij <- 0.1 
aij2 <- 1
# para esta utilizaron estos valores en la formula de arrhenius 

# Valor de p para el num de copia extraido de distribucion uniforme -- 0.6, 0.9 
# Tasa de mortalidad -- 0.03, 0.2 
# Energia de activacion -- 0.1, 0.6 
# con el prefactor a con un valor de 
a <- 0.46^(E/(Kb * 300))
# Vale 0

a2 <- 0.05^(E/(Kb * 278))
a2
# Tambien vale 0 

# rnorm para distribuciones 
# utilizar las distintas distribuciones para crear matrices aleatorias (que corresponde
# al valor de Xij)
# y con eso uso el lotka volterra 
# X -- variables sope 
# 2 formulas xq son dos especies 
# usar desolve para este pp 
# valores de X seguuun, creo los saco tambien de una simulacion 
# solo que en lugar de ser 100 spp simulo 4 para una matriz de 2 x 2 
# que representara los valores de interaccion de esas 2 spp

#### MODELO ####
# EJEMPLO INTERNET #

MODEL <- function(time, state, parameters) {
  with(as.list(c(state, parameters)), {
    S = matrix(state[1:2], nrow = 2, ncol=1)
    I = matrix(state[3:4], nrow = 2, ncol=1)
    R = matrix(state[5:6], nrow = 2, ncol=1)
    beta = matrix(c(beta1, beta2), nrow = 2, ncol=1) 
    dS <- -1*(beta) %*% t(S) %*% I
    dI <-  beta %*% t(S) %*% I - gamma * I
    dR <-  gamma * I
    return(list(c(dS, dI, dR)))
  })
}

init       <- c(S1=1-1e-6, S2=1-1e-6, I1=1e-6, I2=1e-6, R1=0.0, R2=0.0)
parameters <- c(beta1=1.4247, beta2=1.4247, gamma=0.14286)
times      <- seq(0, 70, by = 1)

S = matrix(c("S1","S2"), nrow = 2, ncol=1)

out <- ode(y=init, times=times, func=MODEL, parms=parameters)
plot(out[])
library(ggplot2)
library(reshape2)
ggplot(melt(as.data.frame(as.matrix(out)), id='time'), aes(time, value, col=variable)) + 
  geom_point() + geom_line() + facet_wrap(~variable) 




# Modelo 
LotVmod <- function (Time, State, Pars) {
  with(as.list(c(State, Pars)), {
    d_I = ri*(1 - I - a1*J)-S
    d_J = rj*(1 - J - a2*I)-S
    return(list(c(d_I, d_J)))
  })
}

#Solo dos ecuaciones porque son dos especies las que me interesan 
# ri, rj matriz 
# I, J los unicos que no saco como tal de una matriz (?)
# aij, aji si los saco de la matriz 
# diagonal de la matriz (?) # numeros negativos no? porque tienen competencia intraspc

# Crear matrices 
# distribuciones - normal, geometrica 
nmx <- 
View(nmx)
# Matriz con distribucion normal, numeros random, primero 50 porque temo que explote la lap 


MODEL <- function(time, state, parameters) {
  with(as.list(c(state, parameters)), {
    
    # Primero le pido que haga matrices con numeros random 
    a = matrix(rnorm(2500) , nrow = 50)     # Matriz con numeros de distribucion normal

    for(row in 1:nrow(a)) {
      for(col in 1:ncol(a)) {
       
        # Formulas 
        d_I = ri*(1 - I - a[row, col]*J)-S
        d_J = rj*(1 - J - a[row, col]*I)-S
         
      }
    }
    return(list(c(d_I, d_J)))
  })
}

# Funciona pero no es correcto 

# Matriz con los valores de interacciones inter e intra 
a = matrix(rnorm(2500) , nrow = 50)
# Ya tengo una matriz de 50x50 que me representa la interaccion 
# entre al menos 50 spps 

# Ahora quiero hacer varios vectores, estos me ayudaran a 
# determinar las interacciones inter e intra
# dado que estoy utilizando una matriz que no es simetrica 
# y me interesa esa no-simetricidad, voy a extraer los valores 
# de arriba de la diagonal asi como los que estan debajo 

# PRUEBA 
mat <- matrix(1:16, nrow = 4, 
              ncol = 4)
mat
# esta es una matrix x 

# extraer diagonal 
diagpru <- mat[row(mat)==col(mat)]
diagpru
# asi obtengo la diagonal de mi matriz, que en este caso 
# representa los valores de las interacciones interespecificas 
# valores que colocare en la parte del modelo que es 
# rx^2 


# extraer above values 
abajopru <- mat[lower.tri(mat)]
abajopru

# extraer upper values 
arribapru <- mat[upper.tri(mat)]
arribapru
mat
arribaprulisto <- t(mat)[lower.tri(t(mat))]

# https://stackoverflow.com/questions/38504768/extract-respective-upper-and-lower-triangles-elements-of-matrix-in-r
# Asi ya obtengo los valores en el orden que deseo 
# Formula 

MODELOLV <- function(time, state, parameters, r) {
  with(as.list(c(state, parameters)), {
    
    # Primero le pido que haga matrices con numeros random 
    a = matrix(rnorm(16) , nrow = 4)     # Matriz con numeros de distribucion normal
    
    # Ahora sigue extraer los valores que me interesan en nuevos vectores
    d <- a[row(a)==col(a)] 
    # Valores que pertenecen a la diagonal, es decir interacciones intraespecificas
    
    ab <- t(a)[lower.tri(t(a))]
    # Valores que pertenecen al triangulo de arriba de la diagonal 
    # a12, a13, a14, etc 
      
    ba <- mat[lower.tri(a)]
    # Valores que pertenecen al triangulo de abajo de la diagonal 
    # a21, a31, a41, etc. 
      
    # Ya con esto puedo hacer un ciclo for para que en base a los 
    # datos de los vectores corra la formula 
    # Unico problema posible: que solo tome las
    # Formulas 
      
    for (i in ab){
        d_I = r[i]*I*(1 - d[i]*I - ab[i]*J)-S
        d_J = r[i]*J*(1 - d[i]*J - ba[i]*I)-S
        
      return(list(c(d_I, d_J)))
    }
  })
}


r <- 25:30
a = matrix(rnorm(16) , nrow = 4)     # Matriz con numeros de distribucion normal

# Ahora sigue extraer los valores que me interesan en nuevos vectores
d <- a[row(a)==col(a)] 
# Valores que pertenecen a la diagonal, es decir interacciones intraespecificas

ab <- t(a)[lower.tri(t(a))]
# Valores que pertenecen al triangulo de arriba de la diagonal 
# a12, a13, a14, etc 

ba <- a[lower.tri(a)]

a = matrix(rnorm(16) , nrow = 4)  

MODELOLV <- function(time, state, parameters, r, a) {
  with(as.list(c(state, parameters)), {
    # SOLO HICE QUE PUEDIERAS PONER EL VALOR DE LA MATRIZ 
    # PARA QUE NO TENGA QUE GENERAR UNA NUEVA CADA QUE CORRES EL CODIGO 
    # :)
    
    # Ahora sigue extraer los valores que me interesan en nuevos vectores
    d <- a[row(a)==col(a)] 
    # Valores que pertenecen a la diagonal, es decir interacciones intraespecificas
    
    ab <- t(a)[lower.tri(t(a))]
    # Valores que pertenecen al triangulo de arriba de la diagonal 
    # a12, a13, a14, etc 
    
    ba <- mat[lower.tri(a)]
    # Valores que pertenecen al triangulo de abajo de la diagonal 
    # a21, a31, a41, etc. 
    
    # Ya con esto puedo hacer un ciclo for para que en base a los 
    # datos de los vectores corra la formula 
    # Unico problema posible: que solo tome las
    # Formulas 
    
    for (i in ab){
      d_I = r[i]*I*(1 - d[i]*I - ab[i]*J)-S
      d_J = r[i]*J*(1 - d[i]*J - ba[i]*I)-S
      
      return(list(c(d_I, d_J)))
    }
  })
}

# nested loop [pero este solo sirve para imprimir cada uno 
# de los ocmponentes dentro de la matriz]
# solo para ver como funciona 
mat <- matrix(1:16, nrow = 4, 
              ncol = 4)

for(row in 1:nrow(mat)) {
  for(col in 1:ncol(mat)) {
    
    print(mat[row,col])
  }
}


###########################
#### SIMULATEGLV MODELO (SOLO PARA VER COMO FUNCIONA(?))####
# con simulateGLV puedo hacer el modelo 
# pero ello no incluye la tasa de muerte que necesito 
# https://microbiome.github.io/miaSim/reference/simulateGLV.html


# con una funcion ya existente 
# funcion: lvcompg
sp <- 20
# necesitamos determinar el numero de spp que queremos, en este caso 
# puse 20 para la prueba incial 

alpha <- .07
# solo corresponde a una tasa 

r <- runif(sp)*2
# runif es una funcion que genera numeros aleatorios racionales 
# en este caso le piido que genere 40 numeros aleatorios 



mx <- matrix(rnorm(sp^2, m=alpha, sd=alpha/10), nrow=sp, ncol=sp)
# usamos rnorm para hacer una distribucion normal para la matriz 
# usamos m y sd para mean y standard deviation respectivamente 
# mean - de 0.01
# sd - de 0.001
# ambos valores van a ser aplicados a los numeros al azar que saca la 
# distribucion normal, hasta que se alcanza el total de valores de row 
# y col que necesito en mi matriz 


params <- list (r, mx)
# corresponde a dos cosas, los 40 numeros que hice antes 
# y la matriz que tiene la información de interacciones 
# los primeros 40 numeros corresponden a las tasas de crecimiento 
# NOTA: r tendria que sacarlo de la formula que tengo del articulo pero 
# aun no se cual es la falla del codigo

t <- seq (0, 500, by= 0.01)
# tiempo de la simulacion 

inicniv <- runif(sp)/(sp*alpha)
# generame 20 numeros aleatorios y cada uno dividelo por 0.2 
# este va a ser basicamente el vector que tenga los valores 
# iniciales de cada una de las especies dentro del modelo 

lvout <- ode(N0, t, lvcompg, params)
matplot(t, lvout[,-1], type="l", ylab="Cambio", xlab = "tiempo")

##################

#### MODELO LV (SOLO PARA 2 SPP, SE TOMA EN CUENTA DIAGONAL Y VALORES ARRIBA Y DEBAJO DE ESTA)####
# MODELO EN FUNCION PARA USAR EN DESOLVE 
LotVmod <- function (Time, State, Pars) {
  with(as.list(c(State, Pars)), {
    r <- Pars[1, ]
    s <- Pars[2, ]
    a <- Pars[-c(1,2), ]
    I <- State[1,]
    J <- State[2,]
    # con esto lo que hago es decirle a R, de la matriz enorme que es 
    # Pars, toma solamente los renglones que yo te indico 
    # ahora toma eso y haz lo siguiente 
    
    d <- a[row(a)==col(a)] 
    # Valores que pertenecen a la diagonal, es decir interacciones intraespecificas
    
    ab <- t(a)[lower.tri(t(a))]
    # Valores que pertenecen al triangulo de arriba de la diagonal 
    # a12, a13, a14, etc 
    
    ba <- a[lower.tri(a)]
    # Valores que pertenecen al triangulo de abajo de la diagonal 
    # a21, a31, a41, etc. 
    
    # Ya con esto puedo hacer un ciclo for para que en base a los 
    # datos de los vectores corra la formula 
    # Unico problema posible: que solo tome las
    # Formulas 
    
    mtzlv <- rbind(ab, ba)
     
    for (i in 1:length(r)){
        for(row in 1:nrow(a)) {
        for(col in 1:ncol(a)) {
          
          d_I = r[i]*I[i]*(1 - d[i]*I[i] - mtzlv[1,col]*J[i])- s[i]
          d_J = r[i]*J[i]*(1 - d[i]*J[i] - mtzlv[2,col]*I[i])- s[i]
          
        }
      } 
  }
      return(list(c(d_I[i], d_J[i])))
    })
}

# con esto ya tengo todo el modelo y lo que necesito hacer con los 
# parametros dentro de la sola funcion que es LotVmod

# ** Pero solo me hace todas las posibilidades de i,j en interacciones
# interespecificas, me faltaria todo lo que es en interacciones intraspp 
# anyway sigamos 

nsp <- 5
# num de spps 

lvr <- runif(nsp)*2
# hago lo mismo que para el ejemplo que hice antes
# le pido a R me genere 8 numeros aleatorios que sean en este caso 
# las tasas de crecimiento +
# esto aqui porque no tengo el vector que esta dado por la formula que pusieron
# ellos dentro del articulo 

tiempos <- seq (0, 5, by= 0.001)

I <- runif(nsp)
I
J <- runif(nsp)
J

valin <- rbind(I, J)
matrizlvp <- matrix(rnorm(25) , nrow = 5) 

# Tiempos corresponde a la simulacion, cuanto tiempo deseo que la realice
# valin corresponde a valores iniciales dentro del modelo
# a una matriz con valores de distribucion normal, son 25, 5 especies 
# que representan el num de renglones y columnas 
# usamos la funcion 

# time - tiempos 
# iniciales - valin 

# parametros
# va a estar compuesto de s, r y la matriz de interacciones de donde saldran
# todos los valores 
# r renglon 1 
# s renglon 2 
# matriz el resto de renglones, en ese orden especificamente 

s <- 0.3
prlv <- rbind(lvr, s, matrizlvp)
# para los parametros utilizo rbind, coloco en orden (es importante), valores 
# de r (aleatorios porque no me funciono la funcion de arrhenius), valores de 
# tasa de muerte (que pueden ser distintos, dentro de la funcion lo deje como 
# row, col para que no exista problema si hay mas de un valor de muerte)
# finalmente los valores de la matriz 

modelo_p1lv <- ode(func = LotVmod, y = valin, parms = prlv, times = tiempos, 
                   maxsteps = 1e5)
modelo_p1lv



##########################
# Modelo nuevo 
# Biografia - A Primer of Ecology with R Por M. Henry Stevens
# Pagina 232 

#### MODELO PARA N ESPECIES, VARIACION EN VALORES DE R PERO NO DE T ####
lvnspp <- function (time, state, parms){
  
  temp <- parms[1, 1:2]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  
  s <- parms[2,] # tasa de muerte 
  p <- parms[3,1]
  k <- parms[3,2]
  a <- parms[-c(1,2,3), ] # matriz de interaccion 
  
  rangotmp <- temp[1]:temp[2]
  # rango de temperaturas para las que hare la ecuacion arrhenius
  
  r <- c()
  # vector vacio que llenare con arrhenius 
  
  for (i in 1:length(rangotmp)){
   x <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(rangotmp[i]*1.380649e-23))
   r <- append(r, x)
  }
  
  for (i in 1:nrow(a)) {
    lvmds <- r[i] * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}


################################
### EJEMPLO CON ESTE MODELO ####
# temp, s, pk, matriz <- orden de parametros que se tienen 

nc <- sapply(1:30, function(i) rnorm(3, mean = 200, sd = 10))
nc[, 1] 
# Esto sirve para -- estados iniciales para muchas simulaciones 
# me va a servir para cuando quiera variar edos iniciales de las 
# especies que tengo 

temp <- c(250, 255)
s <- c(0.05, 0.2, 0.3)
pk <- c(0.2, 0.7)

mtz <- matrix(rnorm(25) , nrow = 5) 
mtz

x <-numeric(nrow(mtz))
class(x)
parametros <- rbind(temp, s, pk, mtz)

inc <- sapply(1:3, function(i) rnorm(5))
# valores iniciales para varias simulaciones (3)
iniciales
tiempos <- seq(0, 150, by = 11)
lvout <- ode(iniciales, tiempos, lvnspp, parametros)


for (i in 1:3){
  lvout <- ode(inc[,i], tiempos, lvnspp, parametros)
  matplot(lvout[, "time"], lvout[, -1], type = "l", xlab = "Time", ylab = "Population Size", main = "Generalized Lotka-Volterra Model")
  legend("topright", legend = (paste("spp", 1:5)), col = 1:5, lty = 1, cex = 0.8)
}
# Para valores iniciales distintos en cada simulacion 

# Este modelo sirve usando un rango de temperaturas durante la simulacion para 
# el calculo de r 
# que falta -- modificar el que a cada temperatura 

# Por hacer
# 0. Hacer que la funcion me return valores para cada una de las spps 
# LISTO 

# 1. Modificar valores inciiales para ver si coincide 
# posibilidad: j <- smooth.transition(h, Q)
# donde h <- seq(0.001, 5, by = 0.001) y Q <- 1
# LISTO -- YA CORRE EL SISTEMA, EL TEMA ES EL TIPO DE GRAFICA QUE REGRESA (??)

# 2. Incluir codigo que mando roberto dentro de la funcion 
# LISTO, YA SACA VALORES DE R que utiliza dentro de la funcion 

# 3. Modificar funcion del modelo para que lo corra hasta que los valores 
# lleguen a la estabilidad 

# 4. Ya que corra hasta la estabilidad, establecer simulaciones por temperatura
# que se detenga en los valores estables y que recopile los datos de todas las especies 
# en estas estabilidades 
# 5. vectores con esos valores de estabilidad 

#### MODELO QUE INCLUYE DISTINTAS MATRICES CON DIST TEMPERATURAS ####
lvnspp2 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))

  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}

# con un solo valor de r 
# valor de r va a modificarse con respecto a la temperatura 
# ademas de esto, la hice para que tome valores de una matriz a la vez

# funcion para modificar el valor de temperatura 



### FUNCION QUE IMPLEMENTA EL MODELO (INCLUYE CREACION DE MATRICES Y MODELO) ####
convariaciones <- function(temp, s, pk, a, tiempo, incio){
 
  simulacion <- list()
  for (i in 1:length(temp)) {
    simulacion[[i]] <- rbind(temp[i], s, pk, a)
    names(simulacion)[i] = paste0("matriz",i)
  }
  simulacion
  
  
  # ya tengo matrices distintas, cada una con un valor 
  # distinto de temperatura que es el objetivo 
  # hacer simuláciones con variaciones de un grado de T°
  
  # Lo que hice aqui es tomar todos los valores que son introducidos 
  # y uni esos distintos valores a un valor distinto de temperatura 
  # creando una lista de matrices donde la unica variable es la temperatura 
  # el resto de valores es el mismo, solo funcionaria para una simulacion con 
  # valores especificos de s, pk, a
  
  params <- simulacion
  resultados <- list()
  for (x in 1:length(params)){
    resultados[[x]] <- ode(incio, tiempo, lvnspp2, params[[x]])
    names(resultados)[[x]] = paste0("reslt",x)
  }
  
  return(resultados)
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
}
  
  library(deSolve)

# EJEMPLO PEQUEÑO CON 5 SPPS 
function(temp, s, pk, a, tiempo, incio)
temp5 <- 250:255
s5 <- 0.2
pk5 <- c(0.2, 0.1)
matriz5 <-  matrix(runif(25, 0, 1) , nrow = 5)
tiempo5 <- seq(0, 50, by = 1)
dinicio5 <- runif(5, 0 , 1)

ejemplo_conv <- convariaciones(temp5, s5, pk5, matriz5, tiempo5, dinicio5)
ejemplo_conv

ejemplo_conv
# NOTAS: Ya funciona asi como esta, todo lo hace como lo deseo sin embargo 
# 1. los nombres de los resultados no estan como me gustaria, quiza hay algo malo 
# en el codigo sin embargo creo que no afecta tanto para lo siguiente 
# 2. los valores tienden a negativo, aparece error de que los valores son muy 
# pequeños, espero que ello se modifique cuando ponga valores mas cercanos a la 
# realidad. 

ncol(matriz5)





# EJEMPLO 30 SPPS Y 500 TIEMPO 
clock <- seq(0, 300, by = 1)
matz <- matrix(runif(900, 0, 1) , nrow = 30)
# numeros al azar 
temperaturas <- (260:262)
muerte <- 0.3
pkvas <- c(0.2, 0.7)
dinicio <- runif(30, 0 , 1)

# Inicio y la matriz tienen que tener la misma llngitud obviamente 
# para que el programa pueda correr 

resultados <- list()
for (i in 1:length(params)){
  resultados[[i]] <- ode(incio, tiempo, lvnspp2, params)
  names(resultados)[[i]] = paste0("reslt",i)
}



result_30_500 <- convariaciones(temp = temperaturas, s = muerte, pk = pkvas, tiempo = clock, a = matz, incio = dinicio)
result_30_500
# este incluye variaciones con 3 temperaturas (260-262)
length(result_30_500)
result_30_500$res

grafica_30_500 <- matplot(result_30_500[[1]]$reslt3 [, "time"], solution[, -1], type = "l", xlab = "Time", ylab = "Population Size", main = "Generalized Lotka-Volterra Model")
legend("topright", legend = colnames(solution[, -1]), col = 1:ncol(solution[, -1]), lty = 1, cex = 0.8)

# OBSERVACIONES DE ESTE PUNTO. 
# 1. EL PROGRAMA SI CORRE, LO QUE QUIERE DECIR QUE ESTA BIEN ESCRITO 
# 2. SE DETUVO LA SIMULACION AL TIEMPO 10 -- SE ALCANZO RAPIDAMENTE LA ESTABILIDAD 
# 3. NOTA: INICIO Y LA MATRIZ TIENEN QUE TENER LA MISMA LONGITUD (MENSA)
# 4. 



convariaciones <- function(temp, s, pk, a, tiempo, incio){
  
  simulacion <- list()
  for (i in 1:length(temp)) {
    simulacion[[i]] <- rbind(temp[i], s, pk, a)
    names(simulacion)[i] = paste0("matriz",i)
  }
  simulacion
  
  
  # ya tengo matrices distintas, cada una con un valor 
  # distinto de temperatura que es el objetivo 
  # hacer simuláciones con variaciones de un grado de T°
  
  # Lo que hice aqui es tomar todos los valores que son introducidos 
  # y uni esos distintos valores a un valor distinto de temperatura 
  # creando una lista de matrices donde la unica variable es la temperatura 
  # el resto de valores es el mismo, solo funcionaria para una simulacion con 
  # valores especificos de s, pk, a
  
  params <- simulacion
  resultados <- list()
  for (x in 1:length(params)){
    resultados[[x]] <- ode(incio, tiempo, lvnspp2, params[[x]])
    names(resultados)[[x]] = paste0("reslt",x)
  }
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
  
  values <- c()
  for (f in 1:length(resultados)){
    mz <- as.data.frame(resultados[f])
    
    for (k in 1:ncol(mz)){
      values <- min(mz[k][mz[k] != 0])
      
    }
    return(resultados)
  }

}

mz[1]
valoresrst <- list()
for (f in 1:length(ejemplo_conv)){
    mtz <- ejemplo_conv[f]
  for (k in 1:ncol(matriz5)+1){
    valoresrst <- min(mtz[k] [mtz[k] != 0])
  }
  print(valoresrst)
}

1:ncol(matriz5)+1

ejemplo_conv[i]
vectores_resultados <- list()
for( i in length(ejemplo_conv)){
  vectores_resultados[[x]] <- ejemplo_conv
  
}

for (i in 1:ncol(df)){
  valoresmin <- min(df[i][df[i] != 0])
  print(valoresmin)
}


#### PARA RECOPILAR LOS VALORES DE CADA COLUMNA 

valoresmin <- list()
for (f in 1:length(ejemplo_conv)){
  mz <- as.data.frame(ejemplo_conv[f])
  for (k in 1:ncol(mz)){
    valoresmin <- apply(mz,2,min)
  }
  
  print(valoresmin)
}


# Con esto recopilo los valores mas bajos de cada columna 
# problema: nombres de las variables, no me da valores distintos de 0


df <- as.data.frame(rbind(c(0.01,0.4,0.5,5,27,0.22,25,0,0,0.3),c(0.25,0,0,2.3,3.6,6,0,0.001,0.021,0),c(22,23,0,40,0.53,0.2,0.4,0.44,0,0),c(0.1,0,0.12,0.56,0.7,13,0,0,3,4)))
df[1]

valores <- list()

for (i in 1:ncol(df)){
  valores <- min(df[i][df[i] != 0])
  print(valores)
} 

# ESTO FUNCIONA PARA UNA MATRIZ, ME DA UN VECTOR CON VALORES MENORES PERO 
# MAS GRANDES DE 0 DE ESTA MATRIZ 

values <- c()
for (f in 1:length(ejemplo_conv)){
  mz <- as.data.frame(ejemplo_conv[f])
  
  for (k in 1:ncol(mz)){
    values <- min(mz[k][mz[k] > 0])
    print(values)
  }
  
}


dat <- data.frame(Col1 = rep("ABC", 3), Col2 = c("Hello", "Hi", "Bye"))
print(head(dat))

library(dplyr)

dat.merged <- dat %>%
  dplyr::group_by(Col1) %>%
  dplyr::summarise(Col2 = paste(Col2, collapse = ","))
print(head(dat.merged))