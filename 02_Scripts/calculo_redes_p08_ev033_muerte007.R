library(mlBioNets)
# funciones a usar: net_inference y net_plot

#### 20 ESPECIES ####
inference_278_20spp <- net_inference(tabla278_20spp_zero, method = "aracne")
net_plot(inference_278_20spp, type = "centrality")

inference_279_20spp <- net_inference(tabla279_20spp_zero, method = "aracne")
net_plot(inference_279_20spp, type = "centrality")

inference_280_20spp <- net_inference(tabla280_20spp_zero, method = "aracne")
net_plot(inference_280_20spp, type = "centrality")

inference_281_20spp <- net_inference(tabla281_20spp_zero, method = "aracne")
net_plot(inference_281_20spp, type = "centrality")

inference_282_20spp <- net_inference(tabla282_20spp_zero, method = "aracne") ## 10 nodos en lugar de 20 ??
net_plot(inference_282_20spp, type = "centrality")

inference_283_20spp <- net_inference(tabla283_20spp_zero, method = "aracne")
net_plot(inference_283_20spp, type = "centrality")

inference_284_20spp <- net_inference(tabla284_20spp_zero, method = "aracne")
net_plot(inference_284_20spp, type = "centrality")

inference_285_20spp <- net_inference(tabla285_20spp_zero, method = "aracne")
net_plot(inference_285_20spp, type = "centrality")

inference_286_20spp <- net_inference(tabla286_20spp_zero, method = "aracne")
net_plot(inference_286_20spp, type = "centrality")

inference_287_20spp <- net_inference(tabla287_20spp_zero, method = "aracne")
net_plot(inference_287_20spp, type = "centrality")

inference_288_20spp <- net_inference(tabla288_20spp_zero, method = "aracne")
net_plot(inference_288_20spp, type = "centrality")

inference_289_20spp <- net_inference(tabla289_20spp_zero, method = "aracne")
net_plot(inference_289_20spp, type = "centrality")

inference_290_20spp <- net_inference(tabla290_20spp_zero, method = "aracne") # No aparece destandar en 0 
net_plot(inference_290_20spp, type = "centrality")

inference_291_20spp <- net_inference(tabla291_20spp_zero, method = "aracne")
net_plot(inference_291_20spp, type = "centrality")

inference_292_20spp <- net_inference(tabla292_20spp_zero, method = "aracne")
net_plot(inference_292_20spp, type = "centrality")

inference_293_20spp <- net_inference(tabla293_20spp_zero, method = "aracne")
net_plot(inference_293_20spp, type = "centrality")

inference_294_20spp <- net_inference(tabla294_20spp_zero, method = "aracne")
net_plot(inference_294_20spp, type = "centrality")

inference_295_20spp <- net_inference(tabla295_20spp_zero, method = "aracne")
net_plot(inference_295_20spp, type = "centrality")

inference_296_20spp <- net_inference(tabla296_20spp_zero, method = "aracne")
net_plot(inference_296_20spp, type = "centrality")

inference_297_20spp <- net_inference(tabla297_20spp_zero, method = "aracne")
net_plot(inference_297_20spp, type = "centrality")

inference_298_20spp <- net_inference(tabla298_20spp_zero, method = "aracne")
net_plot(inference_298_20spp, type = "centrality")

saveRDS(inference_298_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_298_20spp.rds")
saveRDS(inference_297_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_297_20spp.rds")
saveRDS(inference_296_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_296_20spp.rds")
saveRDS(inference_295_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_295_20spp.rds")
saveRDS(inference_294_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_294_20spp.rds")
saveRDS(inference_293_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_293_20spp.rds")
saveRDS(inference_292_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_292_20spp.rds")
saveRDS(inference_291_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_291_20spp.rds")
saveRDS(inference_290_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_290_20spp.rds")
saveRDS(inference_289_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_289_20spp.rds")
saveRDS(inference_288_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_288_20spp.rds")
saveRDS(inference_287_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_287_20spp.rds")
saveRDS(inference_286_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_286_20spp.rds")
saveRDS(inference_285_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_285_20spp.rds")
saveRDS(inference_284_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_284_20spp.rds")
saveRDS(inference_283_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_283_20spp.rds")
saveRDS(inference_282_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_282_20spp.rds")
saveRDS(inference_281_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_281_20spp.rds")
saveRDS(inference_280_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_280_20spp.rds")
saveRDS(inference_279_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_279_20spp.rds")
saveRDS(inference_278_20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/inference_278_20spp.rds")

inference_298_20spp
vector_prom_conx <- c(32, 27,25,21,25,42,32,27,25,36,22,33,40,25,43,32,18,27,36,32,25)
sort(vector_prom_conx, decreasing = T)
length(vector_prom_conx)
median(vector_prom_conx)

s278_cnx <-(degree(inference_278_20spp, mode ="in"))
s279_cnx <-(degree(inference_279_20spp, mode ="in"))
s280_cnx <-(degree(inference_280_20spp, mode ="in"))
s281_cnx <-(degree(inference_281_20spp, mode ="in"))
s282_cnx <-(degree(inference_282_20spp, mode ="in"))
s283_cnx <-(degree(inference_283_20spp, mode ="in"))
s284_cnx <-(degree(inference_284_20spp, mode ="in"))
s285_cnx <-(degree(inference_285_20spp, mode ="in"))
s286_cnx <-(degree(inference_286_20spp, mode ="in"))
s287_cnx <-(degree(inference_287_20spp, mode ="in"))
s288_cnx <-(degree(inference_288_20spp, mode ="in"))
s289_cnx <-(degree(inference_289_20spp, mode ="in"))
s290_cnx <-(degree(inference_290_20spp, mode ="in"))
s291_cnx <-(degree(inference_291_20spp, mode ="in"))
s292_cnx <-(degree(inference_292_20spp, mode ="in"))
s293_cnx <-(degree(inference_293_20spp, mode ="in"))
s294_cnx <-(degree(inference_294_20spp, mode ="in"))
s295_cnx <-(degree(inference_295_20spp, mode ="in"))
s296_cnx <-(degree(inference_296_20spp, mode ="in"))
s297_cnx <-(degree(inference_297_20spp, mode ="in"))
s298_cnx <-(degree(inference_298_20spp, mode ="in"))

conexiones_20spp <- rbind(s278_cnx,s279_cnx,s280_cnx,s281_cnx,s282_cnx,s283_cnx,s284_cnx, s285_cnx, 
                          s286_cnx, s287_cnx, s288_cnx, s289_cnx, s290_cnx, s291_cnx, s292_cnx, s293_cnx,
                          s294_cnx, s295_cnx, s296_cnx, s297_cnx, s298_cnx)
conexiones_20spp

sort(degree(inference_278_20spp, mode ="in"), decreasing = T)
sort(degree(inference_279_20spp, mode ="in"), decreasing = T)
sort(degree(inference_280_20spp, mode ="in"), decreasing = T)
sort(degree(inference_281_20spp, mode ="in"), decreasing = T)
sort(degree(inference_282_20spp, mode ="in"), decreasing = T)
sort(degree(inference_283_20spp, mode ="in"), decreasing = T)
sort(degree(inference_284_20spp, mode ="in"), decreasing = T)
sort(degree(inference_285_20spp, mode ="in"), decreasing = T)
sort(degree(inference_286_20spp, mode ="in"), decreasing = T)
sort(degree(inference_287_20spp, mode ="in"), decreasing = T)
sort(degree(inference_288_20spp, mode ="in"), decreasing = T)
sort(degree(inference_289_20spp, mode ="in"), decreasing = T)
sort(degree(inference_290_20spp, mode ="in"), decreasing = T)
sort(degree(inference_291_20spp, mode ="in"), decreasing = T)
sort(degree(inference_292_20spp, mode ="in"), decreasing = T)
sort(degree(inference_293_20spp, mode ="in"), decreasing = T)
sort(degree(inference_294_20spp, mode ="in"), decreasing = T)
sort(degree(inference_295_20spp, mode ="in"), decreasing = T)
sort(degree(inference_296_20spp, mode ="in"), decreasing = T)
sort(degree(inference_297_20spp, mode ="in"), decreasing = T)
sort(degree(inference_298_20spp, mode ="in"), decreasing = T)


s278_cnx_out <-(degree(inference_278_20spp, mode ="out"))
s279_cnx_out <-(degree(inference_279_20spp, mode ="out"))
s280_cnx_out <-(degree(inference_280_20spp, mode ="out"))
s281_cnx_out <-(degree(inference_281_20spp, mode ="out"))
s282_cnx_out <-(degree(inference_282_20spp, mode ="out"))
s283_cnx_out <-(degree(inference_283_20spp, mode ="out"))
s284_cnx_out <-(degree(inference_284_20spp, mode ="out"))
s285_cnx_out <-(degree(inference_285_20spp, mode ="out"))
s286_cnx_out <-(degree(inference_286_20spp, mode ="out"))
s287_cnx_out <-(degree(inference_287_20spp, mode ="out"))
s288_cnx_out <-(degree(inference_288_20spp, mode ="out"))
s289_cnx_out <-(degree(inference_289_20spp, mode ="out"))
s290_cnx_out <-(degree(inference_290_20spp, mode ="out"))
s291_cnx_out <-(degree(inference_291_20spp, mode ="out"))
s292_cnx_out <-(degree(inference_292_20spp, mode ="out"))
s293_cnx_out <-(degree(inference_293_20spp, mode ="out"))
s294_cnx_out <-(degree(inference_294_20spp, mode ="out"))
s295_cnx_out <-(degree(inference_295_20spp, mode ="out"))
s296_cnx_out <-(degree(inference_296_20spp, mode ="out"))
s297_cnx_out <-(degree(inference_297_20spp, mode ="out"))
s298_cnx_out <-(degree(inference_298_20spp, mode ="out"))

conexiones_20sppOUT <- rbind(s278_cnx_out,s279_cnx_out,s280_cnx_out,s281_cnx_out,s282_cnx_out,s283_cnx_out,s284_cnx_out, s285_cnx_out, 
                          s286_cnx_out, s287_cnx_out, s288_cnx_out, s289_cnx_out, s290_cnx_out, s291_cnx_out, s292_cnx_out, s293_cnx_out,
                          s294_cnx_out, s295_cnx_out, s296_cnx_out, s297_cnx_out, s298_cnx_out)

sort(degree(inference_278_20spp, mode ="out"), decreasing = T)
sort(degree(inference_279_20spp, mode ="out"), decreasing = T)
sort(degree(inference_280_20spp, mode ="out"), decreasing = T)
sort(degree(inference_281_20spp, mode ="out"), decreasing = T)
sort(degree(inference_282_20spp, mode ="out"), decreasing = T)
sort(degree(inference_283_20spp, mode ="out"), decreasing = T)
sort(degree(inference_284_20spp, mode ="out"), decreasing = T)
sort(degree(inference_285_20spp, mode ="out"), decreasing = T)
sort(degree(inference_286_20spp, mode ="out"), decreasing = T)
sort(degree(inference_287_20spp, mode ="out"), decreasing = T)
sort(degree(inference_288_20spp, mode ="out"), decreasing = T)
sort(degree(inference_289_20spp, mode ="out"), decreasing = T)
sort(degree(inference_290_20spp, mode ="out"), decreasing = T)
sort(degree(inference_291_20spp, mode ="out"), decreasing = T)
sort(degree(inference_292_20spp, mode ="out"), decreasing = T)
sort(degree(inference_293_20spp, mode ="out"), decreasing = T)
sort(degree(inference_294_20spp, mode ="out"), decreasing = T)
sort(degree(inference_295_20spp, mode ="out"), decreasing = T)
sort(degree(inference_296_20spp, mode ="out"), decreasing = T)
sort(degree(inference_297_20spp, mode ="out"), decreasing = T)
sort(degree(inference_298_20spp, mode ="out"), decreasing = T)

membership(inference_278_20spp)

library(igraph)
plot.igraph(inference_278_20spp, edge.arrow.size=0.2)
plot.igraph(inference_279_20spp, edge.arrow.size=0.2)
plot.igraph(inference_280_20spp, edge.arrow.size=0.2)
plot.igraph(inference_281_20spp, edge.arrow.size=0.2)
plot.igraph(inference_282_20spp, edge.arrow.size=0.2)
plot.igraph(inference_283_20spp, edge.arrow.size=0.2)
plot.igraph(inference_284_20spp, edge.arrow.size=0.2)
plot.igraph(inference_285_20spp, edge.arrow.size=0.2)
plot.igraph(inference_286_20spp, edge.arrow.size=0.2)
plot.igraph(inference_287_20spp, edge.arrow.size=0.2)
plot.igraph(inference_288_20spp, edge.arrow.size=0.2)
plot.igraph(inference_289_20spp, edge.arrow.size=0.2)
plot.igraph(inference_290_20spp, edge.arrow.size=0.2)
plot.igraph(inference_291_20spp, edge.arrow.size=0.2)
plot.igraph(inference_292_20spp, edge.arrow.size=0.2)
plot.igraph(inference_293_20spp, edge.arrow.size=0.2)
plot.igraph(inference_294_20spp, edge.arrow.size=0.2)
plot.igraph(inference_295_20spp, edge.arrow.size=0.2)
plot.igraph(inference_296_20spp, edge.arrow.size=0.2)
plot.igraph(inference_297_20spp, edge.arrow.size=0.2)
plot.igraph(inference_298_20spp, edge.arrow.size=0.2)

################################################################################
 
# TABLA PORCENTAJE DE NODOS CONECTADOS # 
conexiones_20spp <- as.data.frame(conexiones_20spp)
numero_nodos_conectados <- rowSums(conexiones_20spp != 0)
# numero de nodos que tienen una conexión - 20 = numero de nodos desconectados

inference_291_20spp
# de aqui tomo el numero de conexiones 

table(components(inference_298_20spp)$membership)
# para ver numero de clusters, y cuantos nodos tiene cada uno 


#### graficas de redes ####
temvl20 <- read.csv("03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/20spp/tabla_temperatura_conexionesredes.csv")
clust20 <- read.csv("03_Output/simulacion_p08_ev033_muerte007_tablas/simulacion_p08_ev033_muerte007_redes/20spp/temperatura_x_clusters.csv")


# Porcentaje de nodos conectados
library(ggplot2)
View(temvl20)
ggplot(data = temvl20, aes(y = porcentaje_nodos, x = temperatura)) +
  geom_line(color = "blue4", lwd = 0.8) +
  geom_point(color = "blue4", size =2.5) +
  xlab("Temperatura") + ylab("Porcentaje de nodos conectados")+
  theme_classic() +
  ggtitle("Porcentaje de nodos conectados (20 spp)")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))

# Porcentaje de conectividades
ggplot(data = temvl20, aes(y = porcentaje_conexiones, x = temperatura)) +
  geom_line(color = "blue4", lwd = 0.8) +
  geom_point(color = "blue4", size = 2.5) +
  xlab("Temperatura") + ylab("Porcentaje de conectividades")+
  theme_classic() +
  ggtitle("Porcentaje de conectividades (20 spp)")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,298) + ylim(0,1)

# Numero de clusters 
ggplot(data = temvl20, aes(y = clusters_conectados, x = temperatura)) +
  geom_line(color = "darkred", lwd = 0.8) +
  geom_point(color = "darkred", size = 2.5) +
  xlab("Temperatura") + ylab("Número de clusters")+
  theme_classic() +
  ggtitle("Número de Clusters conectados (20 spp)")+
  theme(plot.title = element_text(hjust=0.5, size = 20, face = "bold"),text=element_text(size=15))+
  xlim(278,298) + ylim(0,10)


# TABLA DE CLUSTERS #
