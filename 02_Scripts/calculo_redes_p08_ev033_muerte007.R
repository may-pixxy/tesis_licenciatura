# CALCULO DE REDES MULTICAPA EN BASE A TABLAS DE ABUNDANCIAS #
# Mendoza Velazquez Mayra Beatriz 

#BiocManager::install(version = "3.20")
#devtools::install_github("Nertekkad/mlBioNets")
#BiocManager::install("minet")
library(mlBioNets)
library(ggplot2)
# funciones a usar: net_inference y net_plot
?mlBionets
# funciones # 
contarv <- function(vector_inferencias){
  
  conteos <- c()
  
  for (i in 1:length(vector_inferencias)){
    
    x <- ecount(vector_inferencias[[i]])
    
    conteos <- append(conteos, x)
  }
  return(conteos)
}

nclusts <- function(vector_inferencias){
  ctotal <- c()
  for (i in 1:length(vector_inferencias)) {
    clusters_totales <- length(table(components(vector_inferencias[[i]])$membership))
    
    
    ctotal <- append(ctotal, clusters_totales)
    
  }
  return(ctotal)
}

clustconect <- function(vector_inferencias){
  cconectado <- c()
  for (i in 1:length(vector_inferencias)) {
    lgvc <- (table(components(vector_inferencias[[i]])$membership)) != 1
    slgvc <- sum(lgvc, na.rm = TRUE) # best way to count TRUE values
    cconectado <- append(cconectado, slgvc)
    
  }
  return(cconectado)
}

pconnection <- function (conexiones_c, nspp){
  
  sns <- sum(1:nspp)
  porcds <- c()
  for (i in 1:length(conexiones_c)){
    
    x <- (conexiones_c[[i]])/(sns)
    
    porcds <- append(porcds, x)
  }
  return(porcds)
}

#### 50 spp 
#### 50 ESPECIES ####

inference_278_50spp <- net_inference(tabla278_50spp_zero, method = "aracne")

inference_279_50spp <- net_inference(tabla279_50spp_zero, method = "aracne")

inference_280_50spp <- net_inference(tabla280_50spp_zero, method = "aracne")

inference_281_50spp <- net_inference(tabla281_50spp_zero, method = "aracne")

inference_282_50spp <- net_inference(tabla282_50spp_zero, method = "aracne") 

inference_283_50spp <- net_inference(tabla283_50spp_zero, method = "aracne")

inference_284_50spp <- net_inference(tabla284_50spp_zero, method = "aracne")

inference_285_50spp <- net_inference(tabla285_50spp_zero, method = "aracne")

inference_286_50spp <- net_inference(tabla286_50spp_zero, method = "aracne")

inference_287_50spp <- net_inference(tabla287_50spp_zero, method = "aracne")

inference_288_50spp <- net_inference(tabla288_50spp_zero, method = "aracne")

inference_289_50spp <- net_inference(tabla289_50spp_zero, method = "aracne")

inference_290_50spp <- net_inference(tabla290_50spp_zero, method = "aracne") # No aparece destandar en 0 

inference_291_50spp <- net_inference(tabla291_50spp_zero, method = "aracne")

inference_292_50spp <- net_inference(tabla292_50spp_zero, method = "aracne")

inference_293_50spp <- net_inference(tabla293_50spp_zero, method = "aracne")

inference_294_50spp <- net_inference(tabla294_50spp_zero, method = "aracne")

inference_295_50spp <- net_inference(tabla295_50spp_zero, method = "aracne")

inference_296_50spp <- net_inference(tabla296_50spp_zero, method = "aracne")

inference_297_50spp <- net_inference(tabla297_50spp_zero, method = "aracne")

inference_298_50spp <- net_inference(tabla298_50spp_zero, method = "aracne")

inference_299_50spp <- net_inference(tabla299_50spp_zero, method = "aracne")

inference_300_50spp <- net_inference(tabla300_50spp_zero, method = "aracne")

inference_301_50spp <- net_inference(tabla301_50spp_zero, method = "aracne")

inference_302_50spp <- net_inference(tabla302_50spp_zero, method = "aracne")

inference_303_50spp <- net_inference(tabla303_50spp_zero, method = "aracne")

inference_304_50spp <- net_inference(tabla304_50spp_zero, method = "aracne")

inference_305_50spp <- net_inference(tabla305_50spp_zero, method = "aracne")

inference_306_50spp <- net_inference(tabla306_50spp_zero, method = "aracne")

inference_307_50spp <- net_inference(tabla307_50spp_zero, method = "aracne")


net_plot(inference_278_50spp, type = "centrality")
net_plot(inference_279_50spp, type = "centrality")
net_plot(inference_280_50spp, type = "centrality")
net_plot(inference_281_50spp, type = "centrality")
net_plot(inference_282_50spp, type = "centrality")
net_plot(inference_283_50spp, type = "centrality")
net_plot(inference_284_50spp, type = "centrality")
net_plot(inference_285_50spp, type = "centrality")
net_plot(inference_286_50spp, type = "centrality")
net_plot(inference_287_50spp, type = "centrality")
net_plot(inference_288_50spp, type = "centrality")
net_plot(inference_289_50spp, type = "centrality")
net_plot(inference_290_50spp, type = "centrality")
net_plot(inference_291_50spp, type = "centrality")
net_plot(inference_292_50spp, type = "centrality")
net_plot(inference_293_50spp, type = "centrality")
net_plot(inference_294_50spp, type = "centrality")
net_plot(inference_295_50spp, type = "centrality")
net_plot(inference_296_50spp, type = "centrality")
net_plot(inference_297_50spp, type = "centrality")
net_plot(inference_298_50spp, type = "centrality")
net_plot(inference_299_50spp, type = "centrality")
net_plot(inference_300_50spp, type = "centrality")
net_plot(inference_301_50spp, type = "centrality")
net_plot(inference_302_50spp, type = "centrality")
net_plot(inference_303_50spp, type = "centrality")
net_plot(inference_304_50spp, type = "centrality")
net_plot(inference_305_50spp, type = "centrality")
net_plot(inference_306_50spp, type = "centrality")
net_plot(inference_307_50spp, type = "centrality")



s278_cnx <-(degree(inference_278_50spp, mode ="in"))
s279_cnx <-(degree(inference_279_50spp, mode ="in"))
s280_cnx <-(degree(inference_280_50spp, mode ="in"))
s281_cnx <-(degree(inference_281_50spp, mode ="in"))
s282_cnx <-(degree(inference_282_50spp, mode ="in"))
s283_cnx <-(degree(inference_283_50spp, mode ="in"))
s284_cnx <-(degree(inference_284_50spp, mode ="in"))
s285_cnx <-(degree(inference_285_50spp, mode ="in"))
s286_cnx <-(degree(inference_286_50spp, mode ="in"))
s287_cnx <-(degree(inference_287_50spp, mode ="in"))
s288_cnx <-(degree(inference_288_50spp, mode ="in"))
s289_cnx <-(degree(inference_289_50spp, mode ="in"))
s290_cnx <-(degree(inference_290_50spp, mode ="in"))
s291_cnx <-(degree(inference_291_50spp, mode ="in"))
s292_cnx <-(degree(inference_292_50spp, mode ="in"))
s293_cnx <-(degree(inference_293_50spp, mode ="in"))
s294_cnx <-(degree(inference_294_50spp, mode ="in"))
s295_cnx <-(degree(inference_295_50spp, mode ="in"))
s296_cnx <-(degree(inference_296_50spp, mode ="in"))
s297_cnx <-(degree(inference_297_50spp, mode ="in"))
s298_cnx <-(degree(inference_298_50spp, mode ="in"))
s299_cnx <-(degree(inference_299_50spp, mode ="in"))
s300_cnx <-(degree(inference_300_50spp, mode ="in"))
s301_cnx <-(degree(inference_301_50spp, mode ="in"))
s302_cnx <-(degree(inference_302_50spp, mode ="in"))
s303_cnx <-(degree(inference_303_50spp, mode ="in"))
s304_cnx <-(degree(inference_304_50spp, mode ="in"))
s305_cnx <-(degree(inference_305_50spp, mode ="in"))
s306_cnx <-(degree(inference_306_50spp, mode ="in"))
s307_cnx <-(degree(inference_307_50spp, mode ="in"))


plot.igraph(inference_278_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_279_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_280_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_281_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_282_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_283_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_284_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_285_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_286_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_287_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_288_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_289_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_290_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_291_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_292_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_293_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_294_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_295_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_296_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_297_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_298_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_299_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_300_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_301_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_302_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_303_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_304_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_305_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_306_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")
plot.igraph(inference_307_50spp, edge.arrow.size=0.2, vertex.label.cex=.75, vertex.color="#76a5b8", vertex.shape="circle")


conexiones_50spp <- rbind(s278_cnx,s279_cnx,s280_cnx,s281_cnx,s282_cnx,s283_cnx,s284_cnx, s285_cnx, 
                           s286_cnx, s287_cnx, s288_cnx, s289_cnx, s290_cnx, s291_cnx, s292_cnx, s293_cnx,
                           s294_cnx, s295_cnx, s296_cnx, s297_cnx, s298_cnx,s299_cnx,s300_cnx,s301_cnx,s302_cnx
                          ,s303_cnx,s304_cnx,s305_cnx,s306_cnx,s307_cnx)
conexiones_50spp

###################################################################################################################

inferencias_totales50 <- list(inference_278_50spp, inference_279_50spp, inference_280_50spp, inference_281_50spp, inference_282_50spp,
                               inference_283_50spp, inference_284_50spp, inference_285_50spp, inference_286_50spp, inference_287_50spp,
                               inference_288_50spp, inference_289_50spp, inference_290_50spp, inference_291_50spp, inference_292_50spp,
                               inference_293_50spp, inference_294_50spp, inference_295_50spp, inference_296_50spp, inference_297_50spp,
                               inference_298_50spp, inference_299_50spp, inference_300_50spp, inference_301_50spp, inference_302_50spp, 
                               inference_303_50spp, inference_304_50spp, inference_305_50spp, inference_306_50spp, inference_307_50spp)
#### TEMPERATURAS ####
Temps <- 278:307

#### NUMERO DE NODOS CONECTADOS ####
conexiones_50spp <- as.data.frame(conexiones_50spp)
numero_nodos_conectados50 <- rowSums(conexiones_50spp!= 0)
nodos_conectados50 <- as.vector(numero_nodos_conectados50)
# numero de nodos que tienen una conexión - 50 = numero de nodos desconectados

#### PORCENTAJE NODOS CONECTADOS ####
nspp <- 50
porcentaje_nodos50 <- sapply(nodos_conectados50, function(x) return ((x/nspp)))
porcentaje_nodos50

#### NUMERO CONEXIONES ####
conteo_conexiones_50spp <- contarv(inferencias_totales50)
conteo_conexiones_50spp

#### PORCENTAJE CONEXIONES ####
porcentaje_conexiones_50 <- pconnection(conteo_conexiones_50spp, 50)
porcentaje_conexiones_50

#### NUMERO DE CLUSTERS ####
conteo_clusters50 <- nclusts(inferencias_totales50) # totales 
conteo_clusters50

clustconectados50 <- clustconect(inferencias_totales50) # realmente conectados 

#### creacion de tabla ####
tabla50_redes5 <- cbind(Temps, nodos_conectados50, porcentaje_nodos50, conteo_conexiones_50spp, 
                         porcentaje_conexiones_50, conteo_clusters50,clustconectados50)

write.csv(tabla50_redes5, file = "03_Output/simulacion_1/21_rphm_50spp3/tabla_producto_de_redes.csv")

#### visualizacion de la tabla ####
ggplot(data = tabla50_redes5, aes(y = porcentaje_nodos50, x = Temps)) +
  geom_line(color = "blue4", lwd = 0.8) +
  geom_point(color = "blue4", size =2.5) +
  xlab("Temperatura") + ylab("Porcentaje de nodos conectados")+
  theme_classic() +
  ggtitle("Porcentaje de nodos conectados (50 spp (rphm)- 3)")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))

# Porcentaje de conectividades
ggplot(data = tabla50_redes5, aes(y = porcentaje_conexiones_50, x = Temps)) +
  geom_line(color = "blue4", lwd = 0.8) +
  geom_point(color = "blue4", size = 2.5) +
  xlab("Temperatura") + ylab("Porcentaje de conectividades")+
  theme_classic() +
  ggtitle("Porcentaje de conectividades (50 spp (rphm)- 3)")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,298) + ylim(0,1)

# Numero de clusters 
ggplot(data = tabla50_redes5, aes(y = clustconectados50, x = Temps)) +
  geom_line(color = "darkred", lwd = 0.8) +
  geom_point(color = "darkred", size = 2.5) +
  xlab("Temperatura") + ylab("Número de clusters")+
  theme_classic() +
  ggtitle("Número de Clusters conectados (50 spp (rphm) - 3)")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,298) + ylim(0,15)

