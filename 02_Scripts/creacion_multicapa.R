# Creacion de redes multicapa con mlBionets 
# Mendoza Mayra B. 

library(mlBioNets)
library(muxViz)
library(ggplot2)

# CONSTRmuxViz# CONSTRUCCION DE MULTICAPA PARA LVT 
# ARCHIVOS - 3_50SPP3, 5_50SPP4, 7_50SPP5


# list - igraph objects 
LVT1_278_88_98 <- list(inference_278_50spp, inference_288_50spp, inference_298_50spp)

# ml centrality measures 
ml_LVT1_degree <- ctr_ml(LVT1_278_88_98, "degree")

# vertex names 
LVT1_vnames <- vertex_attr(inference_278_50spp)

# Layout 

lv_lvt1 <- layoutMultiplex(ml_LVT1_degree, layout = "kk", ggplot.format = F, box = T)

# Creation of the abundance list 
abs_LVT1 <- list(tabla278_50spp_zero, tabla288_50spp_zero, tabla298_50spp_zero)

plot_multiplex3D(ml_LVT1_degree, layer.layout = lv_lvt1,
                 layer.colors = c("cyan4", "green4", "blue4"), 
                 layer.shift.x = 0.5, layer.space = 1.5,
                 layer.labels = NULL, layer.labels.cex = 1.5, 
                 node.size.values = "auto",
                 node.size.scale = abs_mat(abs_LVT1, LVT1_278_88_98, n= 4),
                 node.colors = node_color_mat(ml_LVT1_degree, "centrality"),
                 edge.colors = "#838686", 
                 node.colors.aggr = NULL, 
                 show.aggregate = F)
LVT1_RED


# LVT2 
LVT2_278_88_98 <- list(inference_278_50spp, inference_288_50spp, inference_298_50spp)

# ml centrality measures 
ml_LVT2_degree <- ctr_ml(LVT2_278_88_98, "degree")

# vertex names 
LVT2_vnames <- vertex_attr(inference_278_50spp)

# Layout 

lv_lvt2 <- layoutMultiplex(ml_LVT2_degree, layout = "kk", ggplot.format = F, box = T)

# Creation of the abundance list 
abs_LVT2 <- list(tabla278_50spp_zero, tabla288_50spp_zero, tabla298_50spp_zero)

plot_multiplex3D(ml_LVT2_degree, layer.layout = lv_lvt2,
                 layer.colors = c("cyan4", "green4", "blue4"), 
                 layer.shift.x = 0.5, layer.space = 1.5,
                 layer.labels = NULL, layer.labels.cex = 1.5, 
                 node.size.values = "auto",
                 node.size.scale = abs_mat(abs_LVT2, LVT2_278_88_98, n= 2),
                 node.colors = node_color_mat(ml_LVT2_degree, "centrality"),
                 edge.colors = "#838686", 
                 node.colors.aggr = NULL, 
                 show.aggregate = F)

# LVT3 
LVT3_278_88_98 <- list(inference_278_50spp, inference_288_50spp, inference_298_50spp)

# ml centrality measures 
ml_LVT3_degree <- ctr_ml(LVT3_278_88_98, "degree")

# vertex names 
LVT3_vnames <- vertex_attr(inference_278_50spp)

# Layout 

lv_LVT3 <- layoutMultiplex(ml_LVT3_degree, layout = "kk", ggplot.format = F, box = T)

# Creation of the abundance list 
abs_LVT3 <- list(tabla278_50spp_zero, tabla288_50spp_zero, tabla298_50spp_zero)

plot_multiplex3D(ml_LVT3_degree, layer.layout = lv_LVT3,
                 layer.colors = c("cyan4", "green4", "blue4"), 
                 layer.shift.x = 0.5, layer.space = 1.5,
                 layer.labels = NULL, layer.labels.cex = 1.5, 
                 node.size.values = "auto",
                 node.size.scale = abs_mat(abs_LVT3, LVT3_278_88_98, n= 2),
                 node.colors = node_color_mat(ml_LVT3_degree, "centrality"),
                 edge.colors = "#838686", 
                 node.colors.aggr = NULL, 
                 show.aggregate = F)

# LVTph1 
LVTph1_278_88_98 <- list(inference_281_50spp, inference_286_50spp, inference_299_50spp, inference_305_50spp)

# ml centrality measures 
ml_LVTph1_degree <- ctr_ml(LVTph1_278_88_98, "degree")

# vertex names 
LVTph1_vnames <- vertex_attr(inference_278_50spp)

# Layout 

lv_LVTph1 <- layoutMultiplex(ml_LVTph1_degree, layout = "kk", ggplot.format = F, box = T)

# Creation of the abundance list 
abs_LVTph1 <- list(tabla281_50spp_zero, tabla286_50spp_zero, tabla299_50spp_zero, tabla305_50spp_zero)

plot_multiplex3D(ml_LVTph1_degree, layer.layout = lv_LVTph1,
                 layer.colors = c("cyan4", "green4", "blue4", "hotpink4"), 
                 layer.shift.x = 0.5, layer.space = 1.5,
                 layer.labels = NULL, layer.labels.cex = 1.5, 
                 node.size.values = "auto",
                 node.size.scale = abs_mat(abs_LVTph1, LVTph1_278_88_98, n= 4),
                 node.colors = node_color_mat(ml_LVTph1_degree, "centrality"),
                 edge.colors = "#838686", 
                 node.colors.aggr = NULL, 
                 show.aggregate = F)

# LVTph2 
LVTph2_278_88_98 <- list(inference_285_50spp, inference_289_50spp, inference_302_50spp, inference_305_50spp)

# ml centrality measures 
ml_LVTph2_degree <- ctr_ml(LVTph2_278_88_98, "degree")

# vertex names 
LVTph2_vnames <- vertex_attr(inference_285_50spp)

# Layout 

lv_LVTph2 <- layoutMultiplex(ml_LVTph2_degree, layout = "kk", ggplot.format = F, box = T)

# Creation of the abundance list 
abs_LVTph2 <- list(tabla285_50spp_zero, tabla289_50spp_zero, tabla302_50spp_zero, tabla305_50spp_zero)

plot_multiplex3D(ml_LVTph2_degree, layer.layout = lv_LVTph2,
                 layer.colors = c("cyan4", "green4", "blue4", "hotpink4"), 
                 layer.shift.x = 0.5, layer.space = 1.5,
                 layer.labels = NULL, layer.labels.cex = 1.5, 
                 node.size.values = "auto",
                 node.size.scale = abs_mat(abs_LVTph2, LVTph2_278_88_98, n= 4),
                 node.colors = node_color_mat(ml_LVTph2_degree, "centrality"),
                 edge.colors = "#838686", 
                 node.colors.aggr = NULL, 
                 show.aggregate = F)

# LVTph3 
LVTph3_278_88_98 <- list(inference_282_50spp, inference_285_50spp, inference_296_50spp, inference_302_50spp)

# ml centrality measures 
ml_LVTph3_degree <- ctr_ml(LVTph3_278_88_98, "degree")

# vertex names 
LVTph3_vnames <- vertex_attr(inference_285_50spp)

# Layout 

lv_LVTph3 <- layoutMultiplex(ml_LVTph3_degree, layout = "kk", ggplot.format = F, box = T)

# Creation of the abundance list 
abs_LVTph3 <- list(tabla282_50spp_zero, tabla285_50spp_zero, tabla296_50spp_zero, tabla302_50spp_zero)

plot_multiplex3D(ml_LVTph3_degree, layer.layout = lv_LVTph3,
                 layer.colors = c("cyan4", "green4", "blue4", "hotpink4"), 
                 layer.shift.x = 0.5, layer.space = 1.5,
                 layer.labels = NULL, layer.labels.cex = 1.5, 
                 node.size.values = "auto",
                 node.size.scale = abs_mat(abs_LVTph3, LVTph3_278_88_98, n= 4),
                 node.colors = node_color_mat(ml_LVTph3_degree, "centrality"),
                 edge.colors = "#838686", 
                 node.colors.aggr = NULL, 
                 show.aggregate = F)

