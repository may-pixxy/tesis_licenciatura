# Cargar objetos y calcular los ultimos valores de las columnas 

matplot(result_df$time, result_df[, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
        xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                              number_species, "Species"))
# Para visualizar cualquiera de las tablas 


#### Resultados ####
# Cada uno de los siguientes apartados cuenta con 4 movimientos dentro de la base de datos 
# 1. Cargar las matrices de solucion despues de cada una de las simulaciones 
# 2. Creación de una lista con cada una de las matrices correspondientes a cada simulacion 
# 3. Eliminar primeras dos filas de cada uno de los objetos dentro de la lista 
# 4. Aplicar funcion valz para determinar valores de abundancia para cada simulacion

#### SIMULACIONES ABIERT
sim_278_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp1")
sim_278_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp2")
sim_278_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp3")
sim_278_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp4")
sim_278_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp5")
sim_278_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp6")
sim_278_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp7")
sim_278_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp8")
sim_278_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp9")
sim_278_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/278_p08_m007_e033_80spp10")

resultados80spp278 <- list(sim_278_80spp1, sim_278_80spp2, sim_278_80spp3, sim_278_80spp4,
                           sim_278_80spp5, sim_278_80spp6, sim_278_80spp7, sim_278_80spp8, 
                           sim_278_80spp9, sim_278_80spp10)
matrices80spp278 <- lapply(resultados80spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp278)){
  
  x <- matplot(resultados80spp278[[i]]$time, resultados80spp278[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
               xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                     number_species, "Species", "(278)"))
}

tabla278_80spp <- valz(matrices80spp278)

##### 4 spps 279 ####
sim_279_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp1")
sim_279_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp2")
sim_279_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp3")
sim_279_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp4")
sim_279_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp5")
sim_279_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp6")
sim_279_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp7")
sim_279_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp8")
sim_279_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp9")
sim_279_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/279_p08_m007_e033_80spp10")

resultados80spp279 <- list(sim_279_80spp1, sim_279_80spp2, sim_279_80spp3, sim_279_80spp4,
                           sim_279_80spp5, sim_279_80spp6, sim_279_80spp7, sim_279_80spp8, 
                           sim_279_80spp9, sim_279_80spp10)
matrices80spp279 <- lapply(resultados80spp279,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp279)){
  matplot(resultados80spp279[[i]]$time, resultados80spp279[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(279)"))
}

tabla279_80spp <- valz(matrices80spp279)


##### 4 spps 280 ####
sim_280_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp1")
sim_280_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp2")
sim_280_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp3")
sim_280_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp4")
sim_280_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp5")
sim_280_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp6")
sim_280_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp7")
sim_280_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp8")
sim_280_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp9")
sim_280_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/280_p08_m007_e033_80spp10")

resultados80spp280 <- list(sim_280_80spp1, sim_280_80spp2, sim_280_80spp3, sim_280_80spp4,
                           sim_280_80spp5, sim_280_80spp6, sim_280_80spp7, sim_280_80spp8, 
                           sim_280_80spp9, sim_280_80spp10)
matrices80spp280 <- lapply(resultados80spp280,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp280)){
  matplot(resultados80spp280[[i]]$time, resultados80spp280[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(280)"))
}

tabla280_80spp <- valz(matrices80spp280)


##### 4 spps 281 ####
sim_281_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp1")
sim_281_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp2")
sim_281_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp3")
sim_281_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp4")
sim_281_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp5")
sim_281_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp6")
sim_281_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp7")
sim_281_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp8")
sim_281_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp9")
sim_281_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/281_p08_m007_e033_80spp10")

resultados80spp281 <- list(sim_281_80spp1, sim_281_80spp2, sim_281_80spp3, sim_281_80spp4,
                           sim_281_80spp5, sim_281_80spp6, sim_281_80spp7, sim_281_80spp8, 
                           sim_281_80spp9, sim_281_80spp10)
matrices80spp281 <- lapply(resultados80spp281,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp281)){
  matplot(resultados80spp281[[i]]$time, resultados80spp281[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(281)"))
}
tabla281_80spp <- valz(matrices80spp281)


##### 4 spps 282 ####
sim_282_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp1")
sim_282_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp2")
sim_282_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp3")
sim_282_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp4")
sim_282_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp5")
sim_282_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp6")
sim_282_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp7")
sim_282_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp8")
sim_282_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp9")
sim_282_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/282_p08_m007_e033_80spp10")

resultados80spp282 <- list(sim_282_80spp1, sim_282_80spp2, sim_282_80spp3, sim_282_80spp4,
                           sim_282_80spp5, sim_282_80spp6, sim_282_80spp7, sim_282_80spp8, 
                           sim_282_80spp9, sim_282_80spp10)
matrices80spp282 <- lapply(resultados80spp282,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp282)){
  matplot(resultados80spp282[[i]]$time, resultados80spp282[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(282)"))
}
tabla282_80spp <- valz(matrices80spp282)


##### 4 spps 283 ####
sim_283_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp1")
sim_283_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp2")
sim_283_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp3")
sim_283_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp4")
sim_283_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp5")
sim_283_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp6")
sim_283_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp7")
sim_283_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp8")
sim_283_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp9")
sim_283_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/283_p08_m007_e033_80spp10")

resultados80spp283 <- list(sim_283_80spp1, sim_283_80spp2, sim_283_80spp3, sim_283_80spp4,
                           sim_283_80spp5, sim_283_80spp6, sim_283_80spp7, sim_283_80spp8, 
                           sim_283_80spp9, sim_283_80spp10)
matrices80spp283 <- lapply(resultados80spp283,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp283)){
  matplot(resultados80spp283[[i]]$time, resultados80spp283[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(283)"))
}

tabla283_80spp <- valz(matrices80spp283)


##### 4 spps 284 ####
sim_284_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp1")
sim_284_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp2")
sim_284_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp3")
sim_284_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp4")
sim_284_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp5")
sim_284_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp6")
sim_284_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp7")
sim_284_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp8")
sim_284_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp9")
sim_284_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/284_p08_m007_e033_80spp10")

resultados80spp284 <- list(sim_284_80spp1, sim_284_80spp2, sim_284_80spp3, sim_284_80spp4,
                           sim_284_80spp5, sim_284_80spp6, sim_284_80spp7, sim_284_80spp8, 
                           sim_284_80spp9, sim_284_80spp10)
matrices80spp284 <- lapply(resultados80spp284,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp284)){
  matplot(resultados80spp284[[i]]$time, resultados80spp284[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(284)"))
}

tabla284_80spp <- valz(matrices80spp284)


##### 4 spps 285 ####
sim_285_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp1")
sim_285_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp2")
sim_285_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp3")
sim_285_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp4")
sim_285_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp5")
sim_285_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp6")
sim_285_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp7")
sim_285_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp8")
sim_285_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp9")
sim_285_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/285_p08_m007_e033_80spp10")

resultados80spp285 <- list(sim_285_80spp1, sim_285_80spp2, sim_285_80spp3, sim_285_80spp4,
                           sim_285_80spp5, sim_285_80spp6, sim_285_80spp7, sim_285_80spp8, 
                           sim_285_80spp9, sim_285_80spp10)
matrices80spp285 <- lapply(resultados80spp285,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp285)){
  matplot(resultados80spp285[[i]]$time, resultados80spp285[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(285)"))
}

tabla285_80spp <- valz(matrices80spp285)


##### 4 spps 286 ####
sim_286_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp1")
sim_286_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp2")
sim_286_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp3")
sim_286_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp4")
sim_286_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp5")
sim_286_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp6")
sim_286_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp7")
sim_286_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp8")
sim_286_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp9")
sim_286_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/286_p08_m007_e033_80spp10")

resultados80spp286 <- list(sim_286_80spp1, sim_286_80spp2, sim_286_80spp3, sim_286_80spp4,
                           sim_286_80spp5, sim_286_80spp6, sim_286_80spp7, sim_286_80spp8, 
                           sim_286_80spp9, sim_286_80spp10)
matrices80spp286 <- lapply(resultados80spp286,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp286)){
  matplot(resultados80spp286[[i]]$time, resultados80spp286[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(286)"))
}
tabla286_80spp <- valz(matrices80spp286)


##### 4 spps 287 ####   
sim_287_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp1")
sim_287_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp2")
sim_287_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp3")
sim_287_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp4")
sim_287_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp5")
sim_287_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp6")
sim_287_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp7")
sim_287_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp8")
sim_287_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp9")
sim_287_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/287_p08_m007_e033_80spp10")

resultados80spp287 <- list(sim_287_80spp1, sim_287_80spp2, sim_287_80spp3, sim_287_80spp4,
                           sim_287_80spp5, sim_287_80spp6, sim_287_80spp7, sim_287_80spp8, 
                           sim_287_80spp9, sim_287_80spp10)
matrices80spp287 <- lapply(resultados80spp287,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp287)){
  matplot(resultados80spp287[[i]]$time, resultados80spp287[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(287)"))
}

tabla287_80spp <- valz(matrices80spp287)


##### 4 spps 288 ####
sim_288_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp1")
sim_288_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp2")
sim_288_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp3")
sim_288_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp4")
sim_288_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp5")
sim_288_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp6")
sim_288_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp7")
sim_288_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp8")
sim_288_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp9")
sim_288_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/288_p08_m007_e033_80spp10")

resultados80spp288 <- list(sim_288_80spp1, sim_288_80spp2, sim_288_80spp3, sim_288_80spp4,
                           sim_288_80spp5, sim_288_80spp6, sim_288_80spp7, sim_288_80spp8, 
                           sim_288_80spp9, sim_288_80spp10)
matrices80spp288 <- lapply(resultados80spp288,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp288)){
  matplot(resultados80spp288[[i]]$time, resultados80spp288[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(288)"))
}
tabla288_80spp <- valz(matrices80spp288)


##### 4 spps 289 ####
sim_289_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp1")
sim_289_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp2")
sim_289_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp3")
sim_289_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp4")
sim_289_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp5")
sim_289_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp6")
sim_289_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp7")
sim_289_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp8")
sim_289_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp9")
sim_289_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/289_p08_m007_e033_80spp10")

resultados80spp289 <- list(sim_289_80spp1, sim_289_80spp2, sim_289_80spp3, sim_289_80spp4,
                           sim_289_80spp5, sim_289_80spp6, sim_289_80spp7, sim_289_80spp8, 
                           sim_289_80spp9, sim_289_80spp10)
matrices80spp289 <- lapply(resultados80spp289,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp289)){
  matplot(resultados80spp289[[i]]$time, resultados80spp289[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(289)"))
}

tabla289_80spp <- valz(matrices80spp289)

##### 4 spps 290 ####
sim_290_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp1")
sim_290_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp2")
sim_290_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp3")
sim_290_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp4")
sim_290_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp5")
sim_290_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp6")
sim_290_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp7")
sim_290_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp8")
sim_290_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp9")
sim_290_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/290_p08_m007_e033_80spp10")

resultados80spp290 <- list(sim_290_80spp1, sim_290_80spp2, sim_290_80spp3, sim_290_80spp4,
                           sim_290_80spp5, sim_290_80spp6, sim_290_80spp7, sim_290_80spp8, 
                           sim_290_80spp9, sim_290_80spp10)
matrices80spp290 <- lapply(resultados80spp290,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp290)){
  matplot(resultados80spp290[[i]]$time, resultados80spp290[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(290)"))
}
tabla290_80spp <- valz(matrices80spp290)

##### 4 spps 291 ####
sim_291_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp1")
sim_291_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp2")
sim_291_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp3")
sim_291_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp4")
sim_291_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp5")
sim_291_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp6")
sim_291_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp7")
sim_291_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp8")
sim_291_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp9")
sim_291_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/291_p08_m007_e033_80spp10")

resultados80spp291 <- list(sim_291_80spp1, sim_291_80spp2, sim_291_80spp3, sim_291_80spp4,
                           sim_291_80spp5, sim_291_80spp6, sim_291_80spp7, sim_291_80spp8, 
                           sim_291_80spp9, sim_291_80spp10)
matrices80spp291 <- lapply(resultados80spp291,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp291)){
  matplot(resultados80spp291[[i]]$time, resultados80spp291[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(291)"))
}

tabla291_80spp <- valz(matrices80spp291)

##### 4 spps 292 ####
sim_292_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp1")
sim_292_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp2")
sim_292_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp3")
sim_292_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp4")
sim_292_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp5")
sim_292_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp6")
sim_292_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp7")
sim_292_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp8")
sim_292_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp9")
sim_292_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/292_p08_m007_e033_80spp10")

resultados80spp292 <- list(sim_292_80spp1, sim_292_80spp2, sim_292_80spp3, sim_292_80spp4,
                           sim_292_80spp5, sim_292_80spp6, sim_292_80spp7, sim_292_80spp8, 
                           sim_292_80spp9, sim_292_80spp10)
matrices80spp292 <- lapply(resultados80spp292,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp292)){
  matplot(resultados80spp292[[i]]$time, resultados80spp292[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(292)"))
}
tabla292_80spp <- valz(matrices80spp292)

##### 4 spps 293 ####
sim_293_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp1")
sim_293_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp2")
sim_293_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp3")
sim_293_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp4")
sim_293_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp5")
sim_293_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp6")
sim_293_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp7")
sim_293_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp8")
sim_293_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp9")
sim_293_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/293_p08_m007_e033_80spp10")

resultados80spp293 <- list(sim_293_80spp1, sim_293_80spp2, sim_293_80spp3, sim_293_80spp4,
                           sim_293_80spp5, sim_293_80spp6, sim_293_80spp7, sim_293_80spp8, 
                           sim_293_80spp9, sim_293_80spp10)
matrices80spp293 <- lapply(resultados80spp293,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp293)){
  matplot(resultados80spp293[[i]]$time, resultados80spp293[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(293)"))
}

tabla293_80spp <- valz(matrices80spp293)

##### 4 spps 294 ####
sim_294_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp1")
sim_294_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp2")
sim_294_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp3")
sim_294_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp4")
sim_294_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp5")
sim_294_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp6")
sim_294_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp7")
sim_294_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp8")
sim_294_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp9")
sim_294_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/294_p08_m007_e033_80spp10")

resultados80spp294 <- list(sim_294_80spp1, sim_294_80spp2, sim_294_80spp3, sim_294_80spp4,
                           sim_294_80spp5, sim_294_80spp6, sim_294_80spp7, sim_294_80spp8, 
                           sim_294_80spp9, sim_294_80spp10)
matrices80spp294 <- lapply(resultados80spp294,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp294)){
  matplot(resultados80spp294[[i]]$time, resultados80spp294[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(294)"))
}

tabla294_80spp <- valz(matrices80spp294)

##### 4 spps 295 ####
sim_295_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp1")
sim_295_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp2")
sim_295_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp3")
sim_295_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp4")
sim_295_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp5")
sim_295_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp6")
sim_295_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp7")
sim_295_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp8")
sim_295_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp9")
sim_295_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/295_p08_m007_e033_80spp10")

resultados80spp295 <- list(sim_295_80spp1, sim_295_80spp2, sim_295_80spp3, sim_295_80spp4,
                           sim_295_80spp5, sim_295_80spp6, sim_295_80spp7, sim_295_80spp8, 
                           sim_295_80spp9, sim_295_80spp10)
matrices80spp295 <- lapply(resultados80spp295,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp295)){
  matplot(resultados80spp295[[i]]$time, resultados80spp295[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(295)"))
}

tabla295_80spp <- valz(matrices80spp295)

##### 4 spps 296 ####
sim_296_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp1")
sim_296_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp2")
sim_296_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp3")
sim_296_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp4")
sim_296_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp5")
sim_296_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp6")
sim_296_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp7")
sim_296_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp8")
sim_296_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp9")
sim_296_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/296_p08_m007_e033_80spp10")

resultados80spp296 <- list(sim_296_80spp1, sim_296_80spp2, sim_296_80spp3, sim_296_80spp4,
                           sim_296_80spp5, sim_296_80spp6, sim_296_80spp7, sim_296_80spp8, 
                           sim_296_80spp9, sim_296_80spp10)
matrices80spp296 <- lapply(resultados80spp296,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp296)){
  matplot(resultados80spp296[[i]]$time, resultados80spp296[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(296)"))
  
}

tabla296_80spp <- valz(matrices80spp296)

##### 4 spps 297 ####
sim_297_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp1")
sim_297_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp2")
sim_297_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp3")
sim_297_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp4")
sim_297_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp5")
sim_297_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp6")
sim_297_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp7")
sim_297_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp8")
sim_297_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp9")
sim_297_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/297_p08_m007_e033_80spp10")

resultados80spp297 <- list(sim_297_80spp1, sim_297_80spp2, sim_297_80spp3, sim_297_80spp4,
                           sim_297_80spp5, sim_297_80spp6, sim_297_80spp7, sim_297_80spp8, 
                           sim_297_80spp9, sim_297_80spp10)
matrices80spp297 <- lapply(resultados80spp297,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp297)){
  matplot(resultados80spp297[[i]]$time, resultados80spp297[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(297)"))
}

tabla297_80spp <- valz(matrices80spp297)

##### 4 spps 298 ####
sim_298_80spp1 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp1")
sim_298_80spp2 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp2")
sim_298_80spp3 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp3")
sim_298_80spp4 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp4")
sim_298_80spp5 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp5")
sim_298_80spp6 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp6")
sim_298_80spp7 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp7")
sim_298_80spp8 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp8")
sim_298_80spp9 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp9")
sim_298_80spp10 <- read.csv("03_Output/simulacion_1/11_80spp/298_p08_m007_e033_80spp10")

resultados80spp298 <- list(sim_298_80spp1, sim_298_80spp2, sim_298_80spp3, sim_298_80spp4,
                           sim_298_80spp5, sim_298_80spp6, sim_298_80spp7, sim_298_80spp8, 
                           sim_298_80spp9, sim_298_80spp10)
matrices80spp298 <- lapply(resultados80spp298,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados80spp298)){
  matplot(resultados80spp298[[i]]$time, resultados80spp298[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(298)"))
}

tabla298_80spp <- valz(matrices80spp298)


##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################


#### 7 spps ####
##### 7 spps 278 ####
sim_278_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp1")
sim_278_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp2")
sim_278_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp3")
sim_278_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp4")
sim_278_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp5")
sim_278_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp6")
sim_278_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp7")
sim_278_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp8")
sim_278_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp9")
sim_278_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/7spp/278_p08_m007_e033_7spp10")

resultados7spp278 <- list(sim_278_7spp1, sim_278_7spp2, sim_278_7spp3, sim_278_7spp4,
                          sim_278_7spp5, sim_278_7spp6, sim_278_7spp7, sim_278_7spp8, 
                          sim_278_7spp9, sim_278_7spp10)
matrices7spp278 <- lapply(resultados7spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla278_7spp <- valz(matrices7spp278)

##### 7 spps 279 ####
sim_279_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp1")
sim_279_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp2")
sim_279_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp3")
sim_279_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp4")
sim_279_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp5")
sim_279_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp6")
sim_279_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp7")
sim_279_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp8")
sim_279_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp9")
sim_279_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/7spp/279_p08_m007_e033_7spp10")

resultados7spp279 <- list(sim_279_7spp1, sim_279_7spp2, sim_279_7spp3, sim_279_7spp4,
                          sim_279_7spp5, sim_279_7spp6, sim_279_7spp7, sim_279_7spp8, 
                          sim_279_7spp9, sim_279_7spp10)
matrices7spp279 <- lapply(resultados7spp279,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla279_7spp <- valz(matrices7spp279)


##### 7 spps 280 ####
sim_280_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp1")
sim_280_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp2")
sim_280_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp3")
sim_280_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp4")
sim_280_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp5")
sim_280_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp6")
sim_280_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp7")
sim_280_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp8")
sim_280_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp9")
sim_280_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/7spp/280_p08_m007_e033_7spp10")

resultados7spp280 <- list(sim_280_7spp1, sim_280_7spp2, sim_280_7spp3, sim_280_7spp4,
                          sim_280_7spp5, sim_280_7spp6, sim_280_7spp7, sim_280_7spp8, 
                          sim_280_7spp9, sim_280_7spp10)
matrices7spp280 <- lapply(resultados7spp280,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla280_7spp <- valz(matrices7spp280)


##### 7 spps 281 ####
sim_281_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp1")
sim_281_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp2")
sim_281_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp3")
sim_281_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp4")
sim_281_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp5")
sim_281_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp6")
sim_281_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp7")
sim_281_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp8")
sim_281_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp9")
sim_281_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/7spp/281_p08_m007_e033_7spp10")

resultados7spp281 <- list(sim_281_7spp1, sim_281_7spp2, sim_281_7spp3, sim_281_7spp4,
                          sim_281_7spp5, sim_281_7spp6, sim_281_7spp7, sim_281_7spp8, 
                          sim_281_7spp9, sim_281_7spp10)
matrices7spp281 <- lapply(resultados7spp281,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla281_7spp <- valz(matrices7spp281)


##### 7 spps 282 ####
sim_282_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp1")
sim_282_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp2")
sim_282_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp3")
sim_282_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp4")
sim_282_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp5")
sim_282_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp6")
sim_282_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp7")
sim_282_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp8")
sim_282_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp9")
sim_282_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp10")

resultados7spp282 <- list(sim_282_7spp1, sim_282_7spp2, sim_282_7spp3, sim_282_7spp4,
                          sim_282_7spp5, sim_282_7spp6, sim_282_7spp7, sim_282_7spp8, 
                          sim_282_7spp9, sim_282_7spp10)
matrices7spp282 <- lapply(resultados7spp282,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla282_7spp <- valz(matrices7spp282)


##### 7 spps 283 ####
sim_283_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp1")
sim_283_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp2")
sim_283_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp3")
sim_283_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp4")
sim_283_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp5")
sim_283_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp6")
sim_283_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp7")
sim_283_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp8")
sim_283_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp9")
sim_283_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/7spp/283_p08_m007_e033_7spp10")

resultados7spp283 <- list(sim_283_7spp1, sim_283_7spp2, sim_283_7spp3, sim_283_7spp4,
                          sim_283_7spp5, sim_283_7spp6, sim_283_7spp7, sim_283_7spp8, 
                          sim_283_7spp9, sim_283_7spp10)
matrices7spp283 <- lapply(resultados7spp283,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla283_7spp <- valz(matrices7spp283)


##### 7 spps 284 ####
sim_284_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp1")
sim_284_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp2")
sim_284_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp3")
sim_284_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp4")
sim_284_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp5")
sim_284_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp6")
sim_284_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp7")
sim_284_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp8")
sim_284_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp9")
sim_284_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/7spp/284_p08_m007_e033_7spp10")

resultados7spp284 <- list(sim_284_7spp1, sim_284_7spp2, sim_284_7spp3, sim_284_7spp4,
                          sim_284_7spp5, sim_284_7spp6, sim_284_7spp7, sim_284_7spp8, 
                          sim_284_7spp9, sim_284_7spp10)
matrices7spp284 <- lapply(resultados7spp284,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla284_7spp <- valz(matrices7spp284)


##### 7 spps 285 ####
sim_285_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp1")
sim_285_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp2")
sim_285_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp3")
sim_285_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp4")
sim_285_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp5")
sim_285_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp6")
sim_285_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp7")
sim_285_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp8")
sim_285_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp9")
sim_285_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/7spp/285_p08_m007_e033_7spp10")

resultados7spp285 <- list(sim_285_7spp1, sim_285_7spp2, sim_285_7spp3, sim_285_7spp4,
                          sim_285_7spp5, sim_285_7spp6, sim_285_7spp7, sim_285_7spp8, 
                          sim_285_7spp9, sim_285_7spp10)
matrices7spp285 <- lapply(resultados7spp285,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla285_7spp <- valz(matrices7spp285)


##### 7 spps 286 ####
sim_286_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp1")
sim_286_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp2")
sim_286_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp3")
sim_286_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp4")
sim_286_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp5")
sim_286_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp6")
sim_286_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp7")
sim_286_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp8")
sim_286_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp9")
sim_286_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/7spp/286_p08_m007_e033_7spp10")

resultados7spp286 <- list(sim_286_7spp1, sim_286_7spp2, sim_286_7spp3, sim_286_7spp4,
                          sim_286_7spp5, sim_286_7spp6, sim_286_7spp7, sim_286_7spp8, 
                          sim_286_7spp9, sim_286_7spp10)
matrices7spp286 <- lapply(resultados7spp286,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla286_7spp <- valz(matrices7spp286)


##### 7 spps 287 ####   
sim_287_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp1")
sim_287_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp2")
sim_287_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp3")
sim_287_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp4")
sim_287_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp5")
sim_287_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp6")
sim_287_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp7")
sim_287_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp8")
sim_287_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp9")
sim_287_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/7spp/287_p08_m007_e033_7spp10")

resultados7spp287 <- list(sim_287_7spp1, sim_287_7spp2, sim_287_7spp3, sim_287_7spp4,
                          sim_287_7spp5, sim_287_7spp6, sim_287_7spp7, sim_287_7spp8, 
                          sim_287_7spp9, sim_287_7spp10)
matrices7spp287 <- lapply(resultados7spp287,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla287_7spp <- valz(matrices7spp287)


##### 7 spps 288 ####
sim_288_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp1")
sim_288_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp2")
sim_288_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp3")
sim_288_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp4")
sim_288_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp5")
sim_288_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp6")
sim_288_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp7")
sim_288_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp8")
sim_288_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp9")
sim_288_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/7spp/288_p08_m007_e033_7spp10")

resultados7spp288 <- list(sim_288_7spp1, sim_288_7spp2, sim_288_7spp3, sim_288_7spp4,
                          sim_288_7spp5, sim_288_7spp6, sim_288_7spp7, sim_288_7spp8, 
                          sim_288_7spp9, sim_288_7spp10)
matrices7spp288 <- lapply(resultados7spp288,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla288_7spp <- valz(matrices7spp288)


##### 7 spps 289 ####
sim_289_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp1")
sim_289_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp2")
sim_289_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp3")
sim_289_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp4")
sim_289_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp5")
sim_289_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp6")
sim_289_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp7")
sim_289_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp8")
sim_289_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp9")
sim_289_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/7spp/289_p08_m007_e033_7spp10")

resultados7spp289 <- list(sim_289_7spp1, sim_289_7spp2, sim_289_7spp3, sim_289_7spp4,
                          sim_289_7spp5, sim_289_7spp6, sim_289_7spp7, sim_289_7spp8, 
                          sim_289_7spp9, sim_289_7spp10)
matrices7spp289 <- lapply(resultados7spp289,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla289_7spp <- valz(matrices7spp289)

##### 7 spps 290 ####
sim_290_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp1")
sim_290_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp2")
sim_290_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp3")
sim_290_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp4")
sim_290_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp5")
sim_290_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp6")
sim_290_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp7")
sim_290_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp8")
sim_290_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp9")
sim_290_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/7spp/290_p08_m007_e033_7spp10")

resultados7spp290 <- list(sim_290_7spp1, sim_290_7spp2, sim_290_7spp3, sim_290_7spp4,
                          sim_290_7spp5, sim_290_7spp6, sim_290_7spp7, sim_290_7spp8, 
                          sim_290_7spp9, sim_290_7spp10)
matrices7spp290 <- lapply(resultados7spp290,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla290_7spp <- valz(matrices7spp290)

##### 7 spps 291 ####
sim_291_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp1")
sim_291_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp2")
sim_291_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp3")
sim_291_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp4")
sim_291_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp5")
sim_291_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp6")
sim_291_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp7")
sim_291_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp8")
sim_291_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp9")
sim_291_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/7spp/291_p08_m007_e033_7spp10")

resultados7spp291 <- list(sim_291_7spp1, sim_291_7spp2, sim_291_7spp3, sim_291_7spp4,
                          sim_291_7spp5, sim_291_7spp6, sim_291_7spp7, sim_291_7spp8, 
                          sim_291_7spp9, sim_291_7spp10)
matrices7spp291 <- lapply(resultados7spp291,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla291_7spp <- valz(matrices7spp291)

##### 7 spps 292 ####
sim_292_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp1")
sim_292_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp2")
sim_292_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp3")
sim_292_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp4")
sim_292_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp5")
sim_292_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp6")
sim_292_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp7")
sim_292_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp8")
sim_292_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp9")
sim_292_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/7spp/292_p08_m007_e033_7spp10")

resultados7spp292 <- list(sim_292_7spp1, sim_292_7spp2, sim_292_7spp3, sim_292_7spp4,
                          sim_292_7spp5, sim_292_7spp6, sim_292_7spp7, sim_292_7spp8, 
                          sim_292_7spp9, sim_292_7spp10)
matrices7spp292 <- lapply(resultados7spp292,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla292_7spp <- valz(matrices7spp292)

##### 7 spps 293 ####
sim_293_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp1")
sim_293_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp2")
sim_293_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp3")
sim_293_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp4")
sim_293_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp5")
sim_293_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp6")
sim_293_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp7")
sim_293_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp8")
sim_293_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp9")
sim_293_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/7spp/293_p08_m007_e033_7spp10")

resultados7spp293 <- list(sim_293_7spp1, sim_293_7spp2, sim_293_7spp3, sim_293_7spp4,
                          sim_293_7spp5, sim_293_7spp6, sim_293_7spp7, sim_293_7spp8, 
                          sim_293_7spp9, sim_293_7spp10)
matrices7spp293 <- lapply(resultados7spp293,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla293_7spp <- valz(matrices7spp293)

##### 7 spps 294 ####
sim_294_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp1")
sim_294_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp2")
sim_294_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp3")
sim_294_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp4")
sim_294_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp5")
sim_294_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp6")
sim_294_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp7")
sim_294_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp8")
sim_294_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp9")
sim_294_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/7spp/294_p08_m007_e033_7spp10")

resultados7spp294 <- list(sim_294_7spp1, sim_294_7spp2, sim_294_7spp3, sim_294_7spp4,
                          sim_294_7spp5, sim_294_7spp6, sim_294_7spp7, sim_294_7spp8, 
                          sim_294_7spp9, sim_294_7spp10)
matrices7spp294 <- lapply(resultados7spp294,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla294_7spp <- valz(matrices7spp294)

##### 7 spps 295 ####
sim_295_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp1")
sim_295_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp2")
sim_295_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp3")
sim_295_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp4")
sim_295_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp5")
sim_295_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp6")
sim_295_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp7")
sim_295_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp8")
sim_295_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp9")
sim_295_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/7spp/295_p08_m007_e033_7spp10")

resultados7spp295 <- list(sim_295_7spp1, sim_295_7spp2, sim_295_7spp3, sim_295_7spp4,
                          sim_295_7spp5, sim_295_7spp6, sim_295_7spp7, sim_295_7spp8, 
                          sim_295_7spp9, sim_295_7spp10)
matrices7spp295 <- lapply(resultados7spp295,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla295_7spp <- valz(matrices7spp295)

##### 7 spps 296 ####
sim_296_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp1")
sim_296_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp2")
sim_296_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp3")
sim_296_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp4")
sim_296_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp5")
sim_296_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp6")
sim_296_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp7")
sim_296_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp8")
sim_296_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp9")
sim_296_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/7spp/296_p08_m007_e033_7spp10")

resultados7spp296 <- list(sim_296_7spp1, sim_296_7spp2, sim_296_7spp3, sim_296_7spp4,
                          sim_296_7spp5, sim_296_7spp6, sim_296_7spp7, sim_296_7spp8, 
                          sim_296_7spp9, sim_296_7spp10)
matrices7spp296 <- lapply(resultados7spp296,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla296_7spp <- valz(matrices7spp296)

##### 7 spps 297 ####
sim_297_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp1")
sim_297_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp2")
sim_297_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp3")
sim_297_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp4")
sim_297_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp5")
sim_297_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp6")
sim_297_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp7")
sim_297_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp8")
sim_297_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp9")
sim_297_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/7spp/297_p08_m007_e033_7spp10")

resultados7spp297 <- list(sim_297_7spp1, sim_297_7spp2, sim_297_7spp3, sim_297_7spp4,
                          sim_297_7spp5, sim_297_7spp6, sim_297_7spp7, sim_297_7spp8, 
                          sim_297_7spp9, sim_297_7spp10)
matrices7spp297 <- lapply(resultados7spp297,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla297_7spp <- valz(matrices7spp297)

##### 7 spps 298 ####
sim_298_7spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp1")
sim_298_7spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp2")
sim_298_7spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp3")
sim_298_7spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp4")
sim_298_7spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp5")
sim_298_7spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp6")
sim_298_7spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp7")
sim_298_7spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp8")
sim_298_7spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp9")
sim_298_7spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/7spp/298_p08_m007_e033_7spp10")

resultados7spp298 <- list(sim_298_7spp1, sim_298_7spp2, sim_298_7spp3, sim_298_7spp4,
                          sim_298_7spp5, sim_298_7spp6, sim_298_7spp7, sim_298_7spp8, 
                          sim_298_7spp9, sim_298_7spp10)
matrices7spp298 <- lapply(resultados7spp298,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla298_7spp <- valz(matrices7spp298)


##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################


#### 20 spps ####
##### 20 spps 278 ####
sim_278_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp1")
sim_278_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp2")
sim_278_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp3")
sim_278_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp4")
sim_278_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp5")
sim_278_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp6")
sim_278_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp7")
sim_278_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp8")
sim_278_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp9")
sim_278_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/20spp/278_p08_m007_e033_20spp10")

resultados20spp278 <- list(sim_278_20spp1, sim_278_20spp2, sim_278_20spp3, sim_278_20spp4,
                          sim_278_20spp5, sim_278_20spp6, sim_278_20spp7, sim_278_20spp8, 
                          sim_278_20spp9, sim_278_20spp10)
matrices20spp278 <- lapply(resultados20spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla278_20spp <- valz(matrices20spp278)

##### 20 spps 279 ####
sim_279_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp1")
sim_279_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp2")
sim_279_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp3")
sim_279_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp4")
sim_279_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp5")
sim_279_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp6")
sim_279_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp7")
sim_279_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp8")
sim_279_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp9")
sim_279_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/20spp/279_p08_m007_e033_20spp10")

resultados20spp279 <- list(sim_279_20spp1, sim_279_20spp2, sim_279_20spp3, sim_279_20spp4,
                          sim_279_20spp5, sim_279_20spp6, sim_279_20spp7, sim_279_20spp8, 
                          sim_279_20spp9, sim_279_20spp10)
matrices20spp279 <- lapply(resultados20spp279,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla279_20spp <- valz(matrices20spp279)


##### 20 spps 280 ####
sim_280_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp1")
sim_280_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp2")
sim_280_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp3")
sim_280_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp4")
sim_280_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp5")
sim_280_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp6")
sim_280_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp7")
sim_280_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp8")
sim_280_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp9")
sim_280_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/20spp/280_p08_m007_e033_20spp10")

resultados20spp280 <- list(sim_280_20spp1, sim_280_20spp2, sim_280_20spp3, sim_280_20spp4,
                          sim_280_20spp5, sim_280_20spp6, sim_280_20spp7, sim_280_20spp8, 
                          sim_280_20spp9, sim_280_20spp10)
matrices20spp280 <- lapply(resultados20spp280,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla280_20spp <- valz(matrices20spp280)


##### 20 spps 281 ####
sim_281_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp1")
sim_281_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp2")
sim_281_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp3")
sim_281_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp4")
sim_281_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp5")
sim_281_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp6")
sim_281_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp7")
sim_281_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp8")
sim_281_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp9")
sim_281_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/20spp/281_p08_m007_e033_20spp10")

resultados20spp281 <- list(sim_281_20spp1, sim_281_20spp2, sim_281_20spp3, sim_281_20spp4,
                          sim_281_20spp5, sim_281_20spp6, sim_281_20spp7, sim_281_20spp8, 
                          sim_281_20spp9, sim_281_20spp10)
matrices20spp281 <- lapply(resultados20spp281,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla281_20spp <- valz(matrices20spp281)


##### 20 spps 282 ####
sim_282_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp1")
sim_282_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp2")
sim_282_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp3")
sim_282_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp4")
sim_282_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp5")
sim_282_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp6")
sim_282_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp7")
sim_282_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp8")
sim_282_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp9")
sim_282_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/20spp/282_p08_m007_e033_20spp10")

resultados20spp282 <- list(sim_282_20spp1, sim_282_20spp2, sim_282_20spp3, sim_282_20spp4,
                          sim_282_20spp5, sim_282_20spp6, sim_282_20spp7, sim_282_20spp8, 
                          sim_282_20spp9, sim_282_20spp10)
matrices20spp282 <- lapply(resultados20spp282,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla282_20spp <- valz(matrices20spp282)


##### 20 spps 283 ####
sim_283_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp1")
sim_283_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp2")
sim_283_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp3")
sim_283_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp4")
sim_283_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp5")
sim_283_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp6")
sim_283_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp7")
sim_283_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp8")
sim_283_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp9")
sim_283_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/20spp/283_p08_m007_e033_20spp10")

resultados20spp283 <- list(sim_283_20spp1, sim_283_20spp2, sim_283_20spp3, sim_283_20spp4,
                          sim_283_20spp5, sim_283_20spp6, sim_283_20spp7, sim_283_20spp8, 
                          sim_283_20spp9, sim_283_20spp10)
matrices20spp283 <- lapply(resultados20spp283,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla283_20spp <- valz(matrices20spp283)


##### 20 spps 284 ####
sim_284_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp1")
sim_284_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp2")
sim_284_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp3")
sim_284_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp4")
sim_284_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp5")
sim_284_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp6")
sim_284_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp7")
sim_284_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp8")
sim_284_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp9")
sim_284_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/20spp/284_p08_m007_e033_20spp10")

resultados20spp284 <- list(sim_284_20spp1, sim_284_20spp2, sim_284_20spp3, sim_284_20spp4,
                          sim_284_20spp5, sim_284_20spp6, sim_284_20spp7, sim_284_20spp8, 
                          sim_284_20spp9, sim_284_20spp10)
matrices20spp284 <- lapply(resultados20spp284,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla284_20spp <- valz(matrices20spp284)


##### 20 spps 285 ####
sim_285_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp1")
sim_285_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp2")
sim_285_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp3")
sim_285_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp4")
sim_285_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp5")
sim_285_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp6")
sim_285_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp7")
sim_285_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp8")
sim_285_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp9")
sim_285_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/20spp/285_p08_m007_e033_20spp10")

resultados20spp285 <- list(sim_285_20spp1, sim_285_20spp2, sim_285_20spp3, sim_285_20spp4,
                          sim_285_20spp5, sim_285_20spp6, sim_285_20spp7, sim_285_20spp8, 
                          sim_285_20spp9, sim_285_20spp10)
matrices20spp285 <- lapply(resultados20spp285,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla285_20spp <- valz(matrices20spp285)


##### 20 spps 286 ####
sim_286_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp1")
sim_286_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp2")
sim_286_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp3")
sim_286_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp4")
sim_286_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp5")
sim_286_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp6")
sim_286_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp7")
sim_286_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp8")
sim_286_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp9")
sim_286_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/20spp/286_p08_m007_e033_20spp10")

resultados20spp286 <- list(sim_286_20spp1, sim_286_20spp2, sim_286_20spp3, sim_286_20spp4,
                          sim_286_20spp5, sim_286_20spp6, sim_286_20spp7, sim_286_20spp8, 
                          sim_286_20spp9, sim_286_20spp10)
matrices20spp286 <- lapply(resultados20spp286,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla286_20spp <- valz(matrices20spp286)


##### 20 spps 287 ####   
sim_287_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp1")
sim_287_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp2")
sim_287_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp3")
sim_287_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp4")
sim_287_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp5")
sim_287_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp6")
sim_287_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp7")
sim_287_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp8")
sim_287_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp9")
sim_287_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/20spp/287_p08_m007_e033_20spp10")

resultados20spp287 <- list(sim_287_20spp1, sim_287_20spp2, sim_287_20spp3, sim_287_20spp4,
                          sim_287_20spp5, sim_287_20spp6, sim_287_20spp7, sim_287_20spp8, 
                          sim_287_20spp9, sim_287_20spp10)
matrices20spp287 <- lapply(resultados20spp287,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla287_20spp <- valz(matrices20spp287)


##### 20 spps 288 ####
sim_288_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp1")
sim_288_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp2")
sim_288_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp3")
sim_288_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp4")
sim_288_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp5")
sim_288_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp6")
sim_288_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp7")
sim_288_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp8")
sim_288_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp9")
sim_288_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/20spp/288_p08_m007_e033_20spp10")

resultados20spp288 <- list(sim_288_20spp1, sim_288_20spp2, sim_288_20spp3, sim_288_20spp4,
                          sim_288_20spp5, sim_288_20spp6, sim_288_20spp7, sim_288_20spp8, 
                          sim_288_20spp9, sim_288_20spp10)
matrices20spp288 <- lapply(resultados20spp288,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla288_20spp <- valz(matrices20spp288)


##### 20 spps 289 ####
sim_289_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp1")
sim_289_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp2")
sim_289_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp3")
sim_289_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp4")
sim_289_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp5")
sim_289_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp6")
sim_289_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp7")
sim_289_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp8")
sim_289_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp9")
sim_289_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/20spp/289_p08_m007_e033_20spp10")

resultados20spp289 <- list(sim_289_20spp1, sim_289_20spp2, sim_289_20spp3, sim_289_20spp4,
                          sim_289_20spp5, sim_289_20spp6, sim_289_20spp7, sim_289_20spp8, 
                          sim_289_20spp9, sim_289_20spp10)
matrices20spp289 <- lapply(resultados20spp289,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla289_20spp <- valz(matrices20spp289)

##### 20 spps 290 ####
sim_290_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp1")
sim_290_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp2")
sim_290_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp3")
sim_290_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp4")
sim_290_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp5")
sim_290_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp6")
sim_290_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp7")
sim_290_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp8")
sim_290_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp9")
sim_290_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/20spp/290_p08_m007_e033_20spp10")

resultados20spp290 <- list(sim_290_20spp1, sim_290_20spp2, sim_290_20spp3, sim_290_20spp4,
                          sim_290_20spp5, sim_290_20spp6, sim_290_20spp7, sim_290_20spp8, 
                          sim_290_20spp9, sim_290_20spp10)
matrices20spp290 <- lapply(resultados20spp290,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla290_20spp <- valz(matrices20spp290)

##### 20 spps 291 ####
sim_291_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp1")
sim_291_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp2")
sim_291_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp3")
sim_291_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp4")
sim_291_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp5")
sim_291_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp6")
sim_291_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp7")
sim_291_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp8")
sim_291_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp9")
sim_291_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/20spp/291_p08_m007_e033_20spp10")

resultados20spp291 <- list(sim_291_20spp1, sim_291_20spp2, sim_291_20spp3, sim_291_20spp4,
                          sim_291_20spp5, sim_291_20spp6, sim_291_20spp7, sim_291_20spp8, 
                          sim_291_20spp9, sim_291_20spp10)
matrices20spp291 <- lapply(resultados20spp291,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla291_20spp <- valz(matrices20spp291)

##### 20 spps 292 ####
sim_292_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp1")
sim_292_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp2")
sim_292_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp3")
sim_292_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp4")
sim_292_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp5")
sim_292_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp6")
sim_292_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp7")
sim_292_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp8")
sim_292_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp9")
sim_292_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/20spp/292_p08_m007_e033_20spp10")

resultados20spp292 <- list(sim_292_20spp1, sim_292_20spp2, sim_292_20spp3, sim_292_20spp4,
                          sim_292_20spp5, sim_292_20spp6, sim_292_20spp7, sim_292_20spp8, 
                          sim_292_20spp9, sim_292_20spp10)
matrices20spp292 <- lapply(resultados20spp292,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla292_20spp <- valz(matrices20spp292)

##### 20 spps 293 ####
sim_293_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp1")
sim_293_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp2")
sim_293_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp3")
sim_293_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp4")
sim_293_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp5")
sim_293_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp6")
sim_293_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp7")
sim_293_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp8")
sim_293_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp9")
sim_293_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/20spp/293_p08_m007_e033_20spp10")

resultados20spp293 <- list(sim_293_20spp1, sim_293_20spp2, sim_293_20spp3, sim_293_20spp4,
                          sim_293_20spp5, sim_293_20spp6, sim_293_20spp7, sim_293_20spp8, 
                          sim_293_20spp9, sim_293_20spp10)
matrices20spp293 <- lapply(resultados20spp293,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla293_20spp <- valz(matrices20spp293)

##### 20 spps 294 ####
sim_294_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp1")
sim_294_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp2")
sim_294_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp3")
sim_294_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp4")
sim_294_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp5")
sim_294_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp6")
sim_294_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp7")
sim_294_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp8")
sim_294_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp9")
sim_294_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/20spp/294_p08_m007_e033_20spp10")

resultados20spp294 <- list(sim_294_20spp1, sim_294_20spp2, sim_294_20spp3, sim_294_20spp4,
                          sim_294_20spp5, sim_294_20spp6, sim_294_20spp7, sim_294_20spp8, 
                          sim_294_20spp9, sim_294_20spp10)
matrices20spp294 <- lapply(resultados20spp294,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla294_20spp <- valz(matrices20spp294)

##### 20 spps 295 ####
sim_295_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp1")
sim_295_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp2")
sim_295_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp3")
sim_295_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp4")
sim_295_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp5")
sim_295_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp6")
sim_295_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp7")
sim_295_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp8")
sim_295_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp9")
sim_295_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/20spp/295_p08_m007_e033_20spp10")

resultados20spp295 <- list(sim_295_20spp1, sim_295_20spp2, sim_295_20spp3, sim_295_20spp4,
                          sim_295_20spp5, sim_295_20spp6, sim_295_20spp7, sim_295_20spp8, 
                          sim_295_20spp9, sim_295_20spp10)
matrices20spp295 <- lapply(resultados20spp295,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla295_20spp <- valz(matrices20spp295)

##### 20 spps 296 ####
sim_296_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp1")
sim_296_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp2")
sim_296_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp3")
sim_296_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp4")
sim_296_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp5")
sim_296_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp6")
sim_296_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp7")
sim_296_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp8")
sim_296_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp9")
sim_296_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/20spp/296_p08_m007_e033_20spp10")

resultados20spp296 <- list(sim_296_20spp1, sim_296_20spp2, sim_296_20spp3, sim_296_20spp4,
                          sim_296_20spp5, sim_296_20spp6, sim_296_20spp7, sim_296_20spp8, 
                          sim_296_20spp9, sim_296_20spp10)
matrices20spp296 <- lapply(resultados20spp296,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla296_20spp <- valz(matrices20spp296)

##### 20 spps 297 ####
sim_297_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp1")
sim_297_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp2")
sim_297_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp3")
sim_297_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp4")
sim_297_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp5")
sim_297_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp6")
sim_297_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp7")
sim_297_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp8")
sim_297_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp9")
sim_297_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/20spp/297_p08_m007_e033_20spp10")

resultados20spp297 <- list(sim_297_20spp1, sim_297_20spp2, sim_297_20spp3, sim_297_20spp4,
                          sim_297_20spp5, sim_297_20spp6, sim_297_20spp7, sim_297_20spp8, 
                          sim_297_20spp9, sim_297_20spp10)
matrices20spp297 <- lapply(resultados20spp297,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla297_20spp <- valz(matrices20spp297)

##### 20 spps 298 ####
sim_298_20spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp1")
sim_298_20spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp2")
sim_298_20spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp3")
sim_298_20spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp4")
sim_298_20spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp5")
sim_298_20spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp6")
sim_298_20spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp7")
sim_298_20spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp8")
sim_298_20spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp9")
sim_298_20spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp10")

resultados20spp298 <- list(sim_298_20spp1, sim_298_20spp2, sim_298_20spp3, sim_298_20spp4,
                          sim_298_20spp5, sim_298_20spp6, sim_298_20spp7, sim_298_20spp8, 
                          sim_298_20spp9, sim_298_20spp10)
matrices20spp298 <- lapply(resultados20spp298,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla298_20spp <- valz(matrices20spp298)


##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
                      
                      
                      
#### 50 spps ####
##### 50 spps 278 ####
sim_278_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp1")
sim_278_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp2")
sim_278_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp3")
sim_278_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp4")
sim_278_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp5")
sim_278_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp6")
sim_278_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp7")
sim_278_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp8")
sim_278_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp9")
sim_278_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/278_p08_m007_e033_50spp10")

resultados50spp278 <- list(sim_278_50spp1, sim_278_50spp2, sim_278_50spp3, sim_278_50spp4,
                          sim_278_50spp5, sim_278_50spp6, sim_278_50spp7, sim_278_50spp8, 
                          sim_278_50spp9, sim_278_50spp10)
matrices50spp278 <- lapply(resultados50spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla278_50spp <- valz(matrices50spp278)

##### 50 spps 279 ####
sim_279_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp1")
sim_279_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp2")
sim_279_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp3")
sim_279_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp4")
sim_279_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp5")
sim_279_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp6")
sim_279_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp7")
sim_279_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp8")
sim_279_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp9")
sim_279_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/279_p08_m007_e033_50spp10")

resultados50spp279 <- list(sim_279_50spp1, sim_279_50spp2, sim_279_50spp3, sim_279_50spp4,
                          sim_279_50spp5, sim_279_50spp6, sim_279_50spp7, sim_279_50spp8, 
                          sim_279_50spp9, sim_279_50spp10)
matrices50spp279 <- lapply(resultados50spp279,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla279_50spp <- valz(matrices50spp279)


##### 50 spps 280 ####
sim_280_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp1")
sim_280_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp2")
sim_280_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp3")
sim_280_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp4")
sim_280_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp5")
sim_280_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp6")
sim_280_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp7")
sim_280_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp8")
sim_280_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp9")
sim_280_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/280_p08_m007_e033_50spp10")

resultados50spp280 <- list(sim_280_50spp1, sim_280_50spp2, sim_280_50spp3, sim_280_50spp4,
                          sim_280_50spp5, sim_280_50spp6, sim_280_50spp7, sim_280_50spp8, 
                          sim_280_50spp9, sim_280_50spp10)
matrices50spp280 <- lapply(resultados50spp280,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla280_50spp <- valz(matrices50spp280)


##### 50 spps 281 ####
sim_281_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp1")
sim_281_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp2")
sim_281_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp3")
sim_281_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp4")
sim_281_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp5")
sim_281_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp6")
sim_281_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp7")
sim_281_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp8")
sim_281_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp9")
sim_281_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/281_p08_m007_e033_50spp10")

resultados50spp281 <- list(sim_281_50spp1, sim_281_50spp2, sim_281_50spp3, sim_281_50spp4,
                          sim_281_50spp5, sim_281_50spp6, sim_281_50spp7, sim_281_50spp8, 
                          sim_281_50spp9, sim_281_50spp10)
matrices50spp281 <- lapply(resultados50spp281,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla281_50spp <- valz(matrices50spp281)


##### 50 spps 282 ####
sim_282_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp1")
sim_282_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp2")
sim_282_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp3")
sim_282_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp4")
sim_282_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp5")
sim_282_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp6")
sim_282_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp7")
sim_282_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp8")
sim_282_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp9")
sim_282_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/282_p08_m007_e033_50spp10")

resultados50spp282 <- list(sim_282_50spp1, sim_282_50spp2, sim_282_50spp3, sim_282_50spp4,
                          sim_282_50spp5, sim_282_50spp6, sim_282_50spp7, sim_282_50spp8, 
                          sim_282_50spp9, sim_282_50spp10)
matrices50spp282 <- lapply(resultados50spp282,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla282_50spp <- valz(matrices50spp282)


##### 50 spps 283 ####
sim_283_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp1")
sim_283_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp2")
sim_283_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp3")
sim_283_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp4")
sim_283_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp5")
sim_283_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp6")
sim_283_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp7")
sim_283_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp8")
sim_283_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp9")
sim_283_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/283_p08_m007_e033_50spp10")

resultados50spp283 <- list(sim_283_50spp1, sim_283_50spp2, sim_283_50spp3, sim_283_50spp4,
                          sim_283_50spp5, sim_283_50spp6, sim_283_50spp7, sim_283_50spp8, 
                          sim_283_50spp9, sim_283_50spp10)
matrices50spp283 <- lapply(resultados50spp283,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla283_50spp <- valz(matrices50spp283)


##### 50 spps 284 ####
sim_284_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp1")
sim_284_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp2")
sim_284_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp3")
sim_284_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp4")
sim_284_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp5")
sim_284_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp6")
sim_284_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp7")
sim_284_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp8")
sim_284_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp9")
sim_284_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/284_p08_m007_e033_50spp10")

resultados50spp284 <- list(sim_284_50spp1, sim_284_50spp2, sim_284_50spp3, sim_284_50spp4,
                          sim_284_50spp5, sim_284_50spp6, sim_284_50spp7, sim_284_50spp8, 
                          sim_284_50spp9, sim_284_50spp10)
matrices50spp284 <- lapply(resultados50spp284,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla284_50spp <- valz(matrices50spp284)


##### 50 spps 285 ####
sim_285_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp1")
sim_285_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp2")
sim_285_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp3")
sim_285_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp4")
sim_285_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp5")
sim_285_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp6")
sim_285_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp7")
sim_285_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp8")
sim_285_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp9")
sim_285_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/285_p08_m007_e033_50spp10")

resultados50spp285 <- list(sim_285_50spp1, sim_285_50spp2, sim_285_50spp3, sim_285_50spp4,
                          sim_285_50spp5, sim_285_50spp6, sim_285_50spp7, sim_285_50spp8, 
                          sim_285_50spp9, sim_285_50spp10)
matrices50spp285 <- lapply(resultados50spp285,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla285_50spp <- valz(matrices50spp285)


##### 50 spps 286 ####
sim_286_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp1")
sim_286_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp2")
sim_286_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp3")
sim_286_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp4")
sim_286_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp5")
sim_286_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp6")
sim_286_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp7")
sim_286_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp8")
sim_286_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp9")
sim_286_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/286_p08_m007_e033_50spp10")

resultados50spp286 <- list(sim_286_50spp1, sim_286_50spp2, sim_286_50spp3, sim_286_50spp4,
                          sim_286_50spp5, sim_286_50spp6, sim_286_50spp7, sim_286_50spp8, 
                          sim_286_50spp9, sim_286_50spp10)
matrices50spp286 <- lapply(resultados50spp286,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla286_50spp <- valz(matrices50spp286)


##### 50 spps 287 ####   
sim_287_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp1")
sim_287_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp2")
sim_287_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp3")
sim_287_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp4")
sim_287_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp5")
sim_287_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp6")
sim_287_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp7")
sim_287_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp8")
sim_287_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp9")
sim_287_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/287_p08_m007_e033_50spp10")

resultados50spp287 <- list(sim_287_50spp1, sim_287_50spp2, sim_287_50spp3, sim_287_50spp4,
                          sim_287_50spp5, sim_287_50spp6, sim_287_50spp7, sim_287_50spp8, 
                          sim_287_50spp9, sim_287_50spp10)
matrices50spp287 <- lapply(resultados50spp287,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla287_50spp <- valz(matrices50spp287)


##### 50 spps 288 ####
sim_288_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp1")
sim_288_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp2")
sim_288_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp3")
sim_288_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp4")
sim_288_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp5")
sim_288_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp6")
sim_288_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp7")
sim_288_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp8")
sim_288_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp9")
sim_288_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/288_p08_m007_e033_50spp10")

resultados50spp288 <- list(sim_288_50spp1, sim_288_50spp2, sim_288_50spp3, sim_288_50spp4,
                          sim_288_50spp5, sim_288_50spp6, sim_288_50spp7, sim_288_50spp8, 
                          sim_288_50spp9, sim_288_50spp10)
matrices50spp288 <- lapply(resultados50spp288,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla288_50spp <- valz(matrices50spp288)


##### 50 spps 289 ####
sim_289_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp1")
sim_289_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp2")
sim_289_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp3")
sim_289_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp4")
sim_289_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp5")
sim_289_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp6")
sim_289_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp7")
sim_289_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp8")
sim_289_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp9")
sim_289_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/289_p08_m007_e033_50spp10")

resultados50spp289 <- list(sim_289_50spp1, sim_289_50spp2, sim_289_50spp3, sim_289_50spp4,
                          sim_289_50spp5, sim_289_50spp6, sim_289_50spp7, sim_289_50spp8, 
                          sim_289_50spp9, sim_289_50spp10)
matrices50spp289 <- lapply(resultados50spp289,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla289_50spp <- valz(matrices50spp289)

##### 50 spps 290 ####
sim_290_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp1")
sim_290_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp2")
sim_290_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp3")
sim_290_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp4")
sim_290_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp5")
sim_290_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp6")
sim_290_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp7")
sim_290_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp8")
sim_290_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp9")
sim_290_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/290_p08_m007_e033_50spp10")

resultados50spp290 <- list(sim_290_50spp1, sim_290_50spp2, sim_290_50spp3, sim_290_50spp4,
                          sim_290_50spp5, sim_290_50spp6, sim_290_50spp7, sim_290_50spp8, 
                          sim_290_50spp9, sim_290_50spp10)
matrices50spp290 <- lapply(resultados50spp290,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla290_50spp <- valz(matrices50spp290)

##### 50 spps 291 ####
sim_291_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp1")
sim_291_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp2")
sim_291_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp3")
sim_291_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp4")
sim_291_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp5")
sim_291_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp6")
sim_291_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp7")
sim_291_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp8")
sim_291_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp9")
sim_291_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/291_p08_m007_e033_50spp10")

resultados50spp291 <- list(sim_291_50spp1, sim_291_50spp2, sim_291_50spp3, sim_291_50spp4,
                          sim_291_50spp5, sim_291_50spp6, sim_291_50spp7, sim_291_50spp8, 
                          sim_291_50spp9, sim_291_50spp10)
matrices50spp291 <- lapply(resultados50spp291,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla291_50spp <- valz(matrices50spp291)

##### 50 spps 292 ####
sim_292_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp1")
sim_292_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp2")
sim_292_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp3")
sim_292_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp4")
sim_292_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp5")
sim_292_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp6")
sim_292_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp7")
sim_292_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp8")
sim_292_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp9")
sim_292_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/292_p08_m007_e033_50spp10")

resultados50spp292 <- list(sim_292_50spp1, sim_292_50spp2, sim_292_50spp3, sim_292_50spp4,
                          sim_292_50spp5, sim_292_50spp6, sim_292_50spp7, sim_292_50spp8, 
                          sim_292_50spp9, sim_292_50spp10)
matrices50spp292 <- lapply(resultados50spp292,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla292_50spp <- valz(matrices50spp292)

##### 50 spps 293 ####
sim_293_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp1")
sim_293_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp2")
sim_293_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp3")
sim_293_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp4")
sim_293_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp5")
sim_293_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp6")
sim_293_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp7")
sim_293_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp8")
sim_293_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp9")
sim_293_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/293_p08_m007_e033_50spp10")

resultados50spp293 <- list(sim_293_50spp1, sim_293_50spp2, sim_293_50spp3, sim_293_50spp4,
                          sim_293_50spp5, sim_293_50spp6, sim_293_50spp7, sim_293_50spp8, 
                          sim_293_50spp9, sim_293_50spp10)
matrices50spp293 <- lapply(resultados50spp293,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla293_50spp <- valz(matrices50spp293)

##### 50 spps 294 ####
sim_294_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp1")
sim_294_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp2")
sim_294_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp3")
sim_294_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp4")
sim_294_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp5")
sim_294_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp6")
sim_294_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp7")
sim_294_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp8")
sim_294_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp9")
sim_294_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/294_p08_m007_e033_50spp10")

resultados50spp294 <- list(sim_294_50spp1, sim_294_50spp2, sim_294_50spp3, sim_294_50spp4,
                          sim_294_50spp5, sim_294_50spp6, sim_294_50spp7, sim_294_50spp8, 
                          sim_294_50spp9, sim_294_50spp10)
matrices50spp294 <- lapply(resultados50spp294,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla294_50spp <- valz(matrices50spp294)

##### 50 spps 295 ####
sim_295_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp1")
sim_295_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp2")
sim_295_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp3")
sim_295_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp4")
sim_295_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp5")
sim_295_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp6")
sim_295_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp7")
sim_295_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp8")
sim_295_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp9")
sim_295_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/295_p08_m007_e033_50spp10")

resultados50spp295 <- list(sim_295_50spp1, sim_295_50spp2, sim_295_50spp3, sim_295_50spp4,
                          sim_295_50spp5, sim_295_50spp6, sim_295_50spp7, sim_295_50spp8, 
                          sim_295_50spp9, sim_295_50spp10)
matrices50spp295 <- lapply(resultados50spp295,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla295_50spp <- valz(matrices50spp295)

##### 50 spps 296 ####
sim_296_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp1")
sim_296_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp2")
sim_296_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp3")
sim_296_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp4")
sim_296_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp5")
sim_296_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp6")
sim_296_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp7")
sim_296_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp8")
sim_296_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp9")
sim_296_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/296_p08_m007_e033_50spp10")

resultados50spp296 <- list(sim_296_50spp1, sim_296_50spp2, sim_296_50spp3, sim_296_50spp4,
                          sim_296_50spp5, sim_296_50spp6, sim_296_50spp7, sim_296_50spp8, 
                          sim_296_50spp9, sim_296_50spp10)
matrices50spp296 <- lapply(resultados50spp296,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla296_50spp <- valz(matrices50spp296)

##### 50 spps 297 ####
sim_297_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp1")
sim_297_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp2")
sim_297_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp3")
sim_297_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp4")
sim_297_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp5")
sim_297_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp6")
sim_297_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp7")
sim_297_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp8")
sim_297_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp9")
sim_297_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/297_p08_m007_e033_50spp10")

resultados50spp297 <- list(sim_297_50spp1, sim_297_50spp2, sim_297_50spp3, sim_297_50spp4,
                          sim_297_50spp5, sim_297_50spp6, sim_297_50spp7, sim_297_50spp8, 
                          sim_297_50spp9, sim_297_50spp10)
matrices50spp297 <- lapply(resultados50spp297,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla297_50spp <- valz(matrices50spp297)

##### 50 spps 298 ####
sim_298_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp1")
sim_298_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp2")
sim_298_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp3")
sim_298_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp4")
sim_298_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp5")
sim_298_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp6")
sim_298_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp7")
sim_298_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp8")
sim_298_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp9")
sim_298_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/298_p08_m007_e033_50spp10")

resultados50spp298 <- list(sim_298_50spp1, sim_298_50spp2, sim_298_50spp3, sim_298_50spp4,
                          sim_298_50spp5, sim_298_50spp6, sim_298_50spp7, sim_298_50spp8, 
                          sim_298_50spp9, sim_298_50spp10)
matrices50spp298 <- lapply(resultados50spp298,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla298_50spp <- valz(matrices50spp298)

##### 50 spps 299 ####
sim_299_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp1")
sim_299_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp2")
sim_299_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp3")
sim_299_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp4")
sim_299_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp5")
sim_299_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp6")
sim_299_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp7")
sim_299_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp8")
sim_299_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp9")
sim_299_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/299_p08_m007_e033_50spp10")

resultados50spp299 <- list(sim_299_50spp1, sim_299_50spp2, sim_299_50spp3, sim_299_50spp4,
                           sim_299_50spp5, sim_299_50spp6, sim_299_50spp7, sim_299_50spp8, 
                           sim_299_50spp9, sim_299_50spp10)
matrices50spp299 <- lapply(resultados50spp299,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla299_50spp <- valz(matrices50spp299)

##### 50 spps 300 ####
sim_300_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp1")
sim_300_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp2")
sim_300_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp3")
sim_300_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp4")
sim_300_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp5")
sim_300_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp6")
sim_300_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp7")
sim_300_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp8")
sim_300_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp9")
sim_300_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/300_p08_m007_e033_50spp10")

resultados50spp300 <- list(sim_300_50spp1, sim_300_50spp2, sim_300_50spp3, sim_300_50spp4,
                           sim_300_50spp5, sim_300_50spp6, sim_300_50spp7, sim_300_50spp8, 
                           sim_300_50spp9, sim_300_50spp10)
matrices50spp300 <- lapply(resultados50spp300,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla300_50spp <- valz(matrices50spp300)

##### 50 spps 301 ####
sim_301_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp1")
sim_301_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp2")
sim_301_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp3")
sim_301_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp4")
sim_301_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp5")
sim_301_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp6")
sim_301_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp7")
sim_301_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp8")
sim_301_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp9")
sim_301_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/301_p08_m007_e033_50spp10")

resultados50spp301 <- list(sim_301_50spp1, sim_301_50spp2, sim_301_50spp3, sim_301_50spp4,
                           sim_301_50spp5, sim_301_50spp6, sim_301_50spp7, sim_301_50spp8, 
                           sim_301_50spp9, sim_301_50spp10)
matrices50spp301 <- lapply(resultados50spp301,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla301_50spp <- valz(matrices50spp301)

##### 50 spps 302 ####
sim_302_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp1")
sim_302_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp2")
sim_302_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp3")
sim_302_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp4")
sim_302_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp5")
sim_302_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp6")
sim_302_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp7")
sim_302_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp8")
sim_302_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp9")
sim_302_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/302_p08_m007_e033_50spp10")

resultados50spp302 <- list(sim_302_50spp1, sim_302_50spp2, sim_302_50spp3, sim_302_50spp4,
                           sim_302_50spp5, sim_302_50spp6, sim_302_50spp7, sim_302_50spp8, 
                           sim_302_50spp9, sim_302_50spp10)
matrices50spp302 <- lapply(resultados50spp302,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla302_50spp <- valz(matrices50spp302)

##### 50 spps 303 ####
sim_303_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp1")
sim_303_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp2")
sim_303_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp3")
sim_303_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp4")
sim_303_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp5")
sim_303_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp6")
sim_303_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp7")
sim_303_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp8")
sim_303_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp9")
sim_303_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/303_p08_m007_e033_50spp10")

resultados50spp303 <- list(sim_303_50spp1, sim_303_50spp2, sim_303_50spp3, sim_303_50spp4,
                           sim_303_50spp5, sim_303_50spp6, sim_303_50spp7, sim_303_50spp8, 
                           sim_303_50spp9, sim_303_50spp10)
matrices50spp303 <- lapply(resultados50spp303,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla303_50spp <- valz(matrices50spp303)


##### 50 spps 304 ####
sim_304_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp1")
sim_304_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp2")
sim_304_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp3")
sim_304_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp4")
sim_304_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp5")
sim_304_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp6")
sim_304_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp7")
sim_304_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp8")
sim_304_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp9")
sim_304_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/304_p08_m007_e033_50spp10")

resultados50spp304 <- list(sim_304_50spp1, sim_304_50spp2, sim_304_50spp3, sim_304_50spp4,
                           sim_304_50spp5, sim_304_50spp6, sim_304_50spp7, sim_304_50spp8, 
                           sim_304_50spp9, sim_304_50spp10)
matrices50spp304 <- lapply(resultados50spp304,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla304_50spp <- valz(matrices50spp304)

##### 50 spps 305 ####
sim_305_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp1")
sim_305_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp2")
sim_305_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp3")
sim_305_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp4")
sim_305_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp5")
sim_305_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp6")
sim_305_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp7")
sim_305_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp8")
sim_305_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp9")
sim_305_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/305_p08_m007_e033_50spp10")

resultados50spp305 <- list(sim_305_50spp1, sim_305_50spp2, sim_305_50spp3, sim_305_50spp4,
                           sim_305_50spp5, sim_305_50spp6, sim_305_50spp7, sim_305_50spp8, 
                           sim_305_50spp9, sim_305_50spp10)
matrices50spp305 <- lapply(resultados50spp305,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla305_50spp <- valz(matrices50spp305)

##### 50 spps 306 ####
sim_306_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp1")
sim_306_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp2")
sim_306_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp3")
sim_306_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp4")
sim_306_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp5")
sim_306_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp6")
sim_306_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp7")
sim_306_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp8")
sim_306_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp9")
sim_306_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/306_p08_m007_e033_50spp10")

resultados50spp306 <- list(sim_306_50spp1, sim_306_50spp2, sim_306_50spp3, sim_306_50spp4,
                           sim_306_50spp5, sim_306_50spp6, sim_306_50spp7, sim_306_50spp8, 
                           sim_306_50spp9, sim_306_50spp10)
matrices50spp306 <- lapply(resultados50spp306,  function(x) x[setdiff(names(x), c("X", "time"))])


tabla306_50spp <- valz(matrices50spp306)

##### 50 spps 307 ####
sim_307_50spp1 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp1")
sim_307_50spp2 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp2")
sim_307_50spp3 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp3")
sim_307_50spp4 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp4")
sim_307_50spp5 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp5")
sim_307_50spp6 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp6")
sim_307_50spp7 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp7")
sim_307_50spp8 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp8")
sim_307_50spp9 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp9")
sim_307_50spp10 <- read.csv("03_Output/simulacion_1/7_50spp5/307_p08_m007_e033_50spp10")

resultados50spp307 <- list(sim_307_50spp1, sim_307_50spp2, sim_307_50spp3, sim_307_50spp4,
                           sim_307_50spp5, sim_307_50spp6, sim_307_50spp7, sim_307_50spp8, 
                           sim_307_50spp9, sim_307_50spp10)
matrices50spp307 <- lapply(resultados50spp307,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla307_50spp <- valz(matrices50spp307)
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################


#### 100 spps ####
##### 100 spps 278 ####
sim_278_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp1")
sim_278_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp2")
sim_278_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp3")
sim_278_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp4")
sim_278_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp5")
sim_278_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp6")
sim_278_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp7")
sim_278_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp8")
sim_278_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp9")
sim_278_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/278_p08_m007_e033_100spp10")

resultados100spp478 <- list(sim_278_100spp1, sim_278_100spp4, sim_278_100spp4, sim_278_100spp4,
                           sim_278_100spp5, sim_278_100spp6, sim_278_100spp7, sim_278_100spp8, 
                           sim_278_100spp9, sim_278_100spp10)
matrices100spp478 <- lapply(resultados100spp478,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla278_100spp <- valz(matrices100spp478)

##### 100 spps 279 ####
sim_279_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp1")
sim_279_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp2")
sim_279_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp3")
sim_279_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp4")
sim_279_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp5")
sim_279_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp6")
sim_279_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp7")
sim_279_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp8")
sim_279_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp9")
sim_279_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/279_p08_m007_e033_100spp10")

resultados100spp479 <- list(sim_279_100spp1, sim_279_100spp4, sim_279_100spp4, sim_279_100spp4,
                           sim_279_100spp5, sim_279_100spp6, sim_279_100spp7, sim_279_100spp8, 
                           sim_279_100spp9, sim_279_100spp10)
matrices100spp479 <- lapply(resultados100spp479,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla279_100spp <- valz(matrices100spp479)


##### 100 spps 280 ####
sim_280_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp1")
sim_280_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp2")
sim_280_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp3")
sim_280_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp4")
sim_280_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp5")
sim_280_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp6")
sim_280_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp7")
sim_280_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp8")
sim_280_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp9")
sim_280_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/280_p08_m007_e033_100spp10")

resultados100spp480 <- list(sim_280_100spp1, sim_280_100spp4, sim_280_100spp4, sim_280_100spp4,
                           sim_280_100spp5, sim_280_100spp6, sim_280_100spp7, sim_280_100spp8, 
                           sim_280_100spp9, sim_280_100spp10)
matrices100spp480 <- lapply(resultados100spp480,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla280_100spp <- valz(matrices100spp480)


##### 100 spps 281 ####
sim_281_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp1")
sim_281_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp2")
sim_281_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp3")
sim_281_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp4")
sim_281_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp5")
sim_281_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp6")
sim_281_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp7")
sim_281_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp8")
sim_281_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp9")
sim_281_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/281_p08_m007_e033_100spp10")

resultados100spp481 <- list(sim_281_100spp1, sim_281_100spp4, sim_281_100spp4, sim_281_100spp4,
                           sim_281_100spp5, sim_281_100spp6, sim_281_100spp7, sim_281_100spp8, 
                           sim_281_100spp9, sim_281_100spp10)
matrices100spp481 <- lapply(resultados100spp481,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla281_100spp <- valz(matrices100spp481)


##### 100 spps 282 ####
sim_282_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp1")
sim_282_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp2")
sim_282_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp3")
sim_282_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp4")
sim_282_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp5")
sim_282_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp6")
sim_282_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp7")
sim_282_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp8")
sim_282_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp9")
sim_282_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/282_p08_m007_e033_100spp10")

resultados100spp482 <- list(sim_282_100spp1, sim_282_100spp4, sim_282_100spp4, sim_282_100spp4,
                           sim_282_100spp5, sim_282_100spp6, sim_282_100spp7, sim_282_100spp8, 
                           sim_282_100spp9, sim_282_100spp10)
matrices100spp482 <- lapply(resultados100spp482,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla282_100spp <- valz(matrices100spp482)


##### 100 spps 283 ####
sim_283_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp1")
sim_283_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp2")
sim_283_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp3")
sim_283_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp4")
sim_283_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp5")
sim_283_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp6")
sim_283_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp7")
sim_283_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp8")
sim_283_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp9")
sim_283_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/283_p08_m007_e033_100spp10")

resultados100spp483 <- list(sim_283_100spp1, sim_283_100spp4, sim_283_100spp4, sim_283_100spp4,
                           sim_283_100spp5, sim_283_100spp6, sim_283_100spp7, sim_283_100spp8, 
                           sim_283_100spp9, sim_283_100spp10)
matrices100spp483 <- lapply(resultados100spp483,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla283_100spp <- valz(matrices100spp483)


##### 100 spps 284 ####
sim_284_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp1")
sim_284_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp2")
sim_284_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp3")
sim_284_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp4")
sim_284_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp5")
sim_284_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp6")
sim_284_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp7")
sim_284_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp8")
sim_284_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp9")
sim_284_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/284_p08_m007_e033_100spp10")

resultados100spp484 <- list(sim_284_100spp1, sim_284_100spp4, sim_284_100spp4, sim_284_100spp4,
                           sim_284_100spp5, sim_284_100spp6, sim_284_100spp7, sim_284_100spp8, 
                           sim_284_100spp9, sim_284_100spp10)
matrices100spp484 <- lapply(resultados100spp484,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla284_100spp <- valz(matrices100spp484)


##### 100 spps 285 ####
sim_285_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp1")
sim_285_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp2")
sim_285_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp3")
sim_285_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp4")
sim_285_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp5")
sim_285_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp6")
sim_285_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp7")
sim_285_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp8")
sim_285_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp9")
sim_285_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/285_p08_m007_e033_100spp10")

resultados100spp485 <- list(sim_285_100spp1, sim_285_100spp4, sim_285_100spp4, sim_285_100spp4,
                           sim_285_100spp5, sim_285_100spp6, sim_285_100spp7, sim_285_100spp8, 
                           sim_285_100spp9, sim_285_100spp10)
matrices100spp485 <- lapply(resultados100spp485,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla285_100spp <- valz(matrices100spp485)


##### 100 spps 286 ####
sim_286_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp1")
sim_286_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp2")
sim_286_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp3")
sim_286_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp4")
sim_286_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp5")
sim_286_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp6")
sim_286_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp7")
sim_286_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp8")
sim_286_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp9")
sim_286_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/286_p08_m007_e033_100spp10")

resultados100spp486 <- list(sim_286_100spp1, sim_286_100spp4, sim_286_100spp4, sim_286_100spp4,
                           sim_286_100spp5, sim_286_100spp6, sim_286_100spp7, sim_286_100spp8, 
                           sim_286_100spp9, sim_286_100spp10)
matrices100spp486 <- lapply(resultados100spp486,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla286_100spp <- valz(matrices100spp486)


##### 100 spps 287 ####   
sim_287_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp1")
sim_287_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp2")
sim_287_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp3")
sim_287_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp4")
sim_287_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp5")
sim_287_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp6")
sim_287_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp7")
sim_287_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp8")
sim_287_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp9")
sim_287_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/287_p08_m007_e033_100spp10")

resultados100spp487 <- list(sim_287_100spp1, sim_287_100spp4, sim_287_100spp4, sim_287_100spp4,
                           sim_287_100spp5, sim_287_100spp6, sim_287_100spp7, sim_287_100spp8, 
                           sim_287_100spp9, sim_287_100spp10)
matrices100spp487 <- lapply(resultados100spp487,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla287_100spp <- valz(matrices100spp487)


##### 100 spps 288 ####
sim_288_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp1")
sim_288_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp2")
sim_288_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp3")
sim_288_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp4")
sim_288_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp5")
sim_288_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp6")
sim_288_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp7")
sim_288_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp8")
sim_288_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp9")
sim_288_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/288_p08_m007_e033_100spp10")

resultados100spp488 <- list(sim_288_100spp1, sim_288_100spp4, sim_288_100spp4, sim_288_100spp4,
                           sim_288_100spp5, sim_288_100spp6, sim_288_100spp7, sim_288_100spp8, 
                           sim_288_100spp9, sim_288_100spp10)
matrices100spp488 <- lapply(resultados100spp488,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla288_100spp <- valz(matrices100spp488)


##### 100 spps 289 ####
sim_289_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp1")
sim_289_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp2")
sim_289_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp3")
sim_289_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp4")
sim_289_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp5")
sim_289_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp6")
sim_289_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp7")
sim_289_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp8")
sim_289_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp9")
sim_289_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/289_p08_m007_e033_100spp10")

resultados100spp489 <- list(sim_289_100spp1, sim_289_100spp4, sim_289_100spp4, sim_289_100spp4,
                           sim_289_100spp5, sim_289_100spp6, sim_289_100spp7, sim_289_100spp8, 
                           sim_289_100spp9, sim_289_100spp10)
matrices100spp489 <- lapply(resultados100spp489,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla289_100spp <- valz(matrices100spp489)

##### 100 spps 290 ####
sim_290_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp1")
sim_290_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp2")
sim_290_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp3")
sim_290_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp4")
sim_290_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp5")
sim_290_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp6")
sim_290_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp7")
sim_290_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp8")
sim_290_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp9")
sim_290_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/290_p08_m007_e033_100spp10")

resultados100spp490 <- list(sim_290_100spp1, sim_290_100spp4, sim_290_100spp4, sim_290_100spp4,
                           sim_290_100spp5, sim_290_100spp6, sim_290_100spp7, sim_290_100spp8, 
                           sim_290_100spp9, sim_290_100spp10)
matrices100spp490 <- lapply(resultados100spp490,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla290_100spp <- valz(matrices100spp490)

##### 100 spps 291 ####
sim_291_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp1")
sim_291_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp2")
sim_291_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp3")
sim_291_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp4")
sim_291_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp5")
sim_291_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp6")
sim_291_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp7")
sim_291_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp8")
sim_291_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp9")
sim_291_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/291_p08_m007_e033_100spp10")

resultados100spp491 <- list(sim_291_100spp1, sim_291_100spp4, sim_291_100spp4, sim_291_100spp4,
                           sim_291_100spp5, sim_291_100spp6, sim_291_100spp7, sim_291_100spp8, 
                           sim_291_100spp9, sim_291_100spp10)
matrices100spp491 <- lapply(resultados100spp491,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla291_100spp <- valz(matrices100spp491)

##### 100 spps 292 ####
sim_292_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp1")
sim_292_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp2")
sim_292_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp3")
sim_292_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp4")
sim_292_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp5")
sim_292_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp6")
sim_292_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp7")
sim_292_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp8")
sim_292_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp9")
sim_292_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/292_p08_m007_e033_100spp10")

resultados100spp492 <- list(sim_292_100spp1, sim_292_100spp4, sim_292_100spp4, sim_292_100spp4,
                           sim_292_100spp5, sim_292_100spp6, sim_292_100spp7, sim_292_100spp8, 
                           sim_292_100spp9, sim_292_100spp10)
matrices100spp492 <- lapply(resultados100spp492,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla292_100spp <- valz(matrices100spp492)

##### 100 spps 293 ####
sim_293_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp1")
sim_293_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp2")
sim_293_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp3")
sim_293_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp4")
sim_293_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp5")
sim_293_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp6")
sim_293_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp7")
sim_293_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp8")
sim_293_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp9")
sim_293_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/293_p08_m007_e033_100spp10")

resultados100spp493 <- list(sim_293_100spp1, sim_293_100spp4, sim_293_100spp4, sim_293_100spp4,
                           sim_293_100spp5, sim_293_100spp6, sim_293_100spp7, sim_293_100spp8, 
                           sim_293_100spp9, sim_293_100spp10)
matrices100spp493 <- lapply(resultados100spp493,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla293_100spp <- valz(matrices100spp493)

##### 100 spps 294 ####
sim_294_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp1")
sim_294_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp2")
sim_294_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp3")
sim_294_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp4")
sim_294_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp5")
sim_294_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp6")
sim_294_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp7")
sim_294_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp8")
sim_294_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp9")
sim_294_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/294_p08_m007_e033_100spp10")

resultados100spp494 <- list(sim_294_100spp1, sim_294_100spp4, sim_294_100spp4, sim_294_100spp4,
                           sim_294_100spp5, sim_294_100spp6, sim_294_100spp7, sim_294_100spp8, 
                           sim_294_100spp9, sim_294_100spp10)
matrices100spp494 <- lapply(resultados100spp494,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla294_100spp <- valz(matrices100spp494)

##### 100 spps 295 ####
sim_295_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp1")
sim_295_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp2")
sim_295_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp3")
sim_295_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp4")
sim_295_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp5")
sim_295_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp6")
sim_295_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp7")
sim_295_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp8")
sim_295_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp9")
sim_295_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/295_p08_m007_e033_100spp10")

resultados100spp495 <- list(sim_295_100spp1, sim_295_100spp4, sim_295_100spp4, sim_295_100spp4,
                           sim_295_100spp5, sim_295_100spp6, sim_295_100spp7, sim_295_100spp8, 
                           sim_295_100spp9, sim_295_100spp10)
matrices100spp495 <- lapply(resultados100spp495,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla295_100spp <- valz(matrices100spp495)

##### 100 spps 296 ####
sim_296_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp1")
sim_296_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp2")
sim_296_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp3")
sim_296_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp4")
sim_296_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp5")
sim_296_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp6")
sim_296_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp7")
sim_296_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp8")
sim_296_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp9")
sim_296_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/296_p08_m007_e033_100spp10")

resultados100spp496 <- list(sim_296_100spp1, sim_296_100spp4, sim_296_100spp4, sim_296_100spp4,
                           sim_296_100spp5, sim_296_100spp6, sim_296_100spp7, sim_296_100spp8, 
                           sim_296_100spp9, sim_296_100spp10)
matrices100spp496 <- lapply(resultados100spp496,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla296_100spp <- valz(matrices100spp496)

##### 100 spps 297 ####
sim_297_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp1")
sim_297_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp2")
sim_297_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp3")
sim_297_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp4")
sim_297_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp5")
sim_297_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp6")
sim_297_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp7")
sim_297_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp8")
sim_297_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp9")
sim_297_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/297_p08_m007_e033_100spp10")

resultados100spp497 <- list(sim_297_100spp1, sim_297_100spp4, sim_297_100spp4, sim_297_100spp4,
                           sim_297_100spp5, sim_297_100spp6, sim_297_100spp7, sim_297_100spp8, 
                           sim_297_100spp9, sim_297_100spp10)
matrices100spp497 <- lapply(resultados100spp497,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla297_100spp <- valz(matrices100spp497)

##### 100 spps 298 ####
sim_298_100spp1 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp1")
sim_298_100spp2 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp2")
sim_298_100spp3 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp3")
sim_298_100spp4 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp4")
sim_298_100spp5 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp5")
sim_298_100spp6 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp6")
sim_298_100spp7 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp7")
sim_298_100spp8 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp8")
sim_298_100spp9 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp9")
sim_298_100spp10 <- read.csv("03_Output/simulacion_1/8_100spp5.1/298_p08_m007_e033_100spp10")

resultados100spp498 <- list(sim_298_100spp1, sim_298_100spp4, sim_298_100spp4, sim_298_100spp4,
                           sim_298_100spp5, sim_298_100spp6, sim_298_100spp7, sim_298_100spp8, 
                           sim_298_100spp9, sim_298_100spp10)
matrices100spp498 <- lapply(resultados100spp498,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla298_100spp <- valz(matrices100spp498)


##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################

# variaciones de 0.01 
sim_278_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp1")
sim_278_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp2")
sim_278_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp3")
sim_278_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp4")
sim_278_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp5")
sim_278_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp6")
sim_278_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp7")
sim_278_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp8")
sim_278_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp9")
sim_278_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278_p08_m007_e033_100spp10")

resultados100spp278 <- list(sim_278_100spp1, sim_278_100spp2, sim_278_100spp3, sim_278_100spp4,
                           sim_278_100spp5, sim_278_100spp6, sim_278_100spp7, sim_278_100spp8, 
                           sim_278_100spp9, sim_278_100spp10)
matrices100spp278 <- lapply(resultados100spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278)){
  x <- matplot(resultados100spp278[[i]]$time, resultados100spp278[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278)"))
}

tabla278_100spp <- valz(matrices100spp278)


sim_278.01_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp1")
sim_278.01_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp2")
sim_278.01_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp3")
sim_278.01_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp4")
sim_278.01_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp5")
sim_278.01_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp6")
sim_278.01_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp7")
sim_278.01_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp8")
sim_278.01_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp9")
sim_278.01_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.01_p08_m007_e033_100spp10")

resultados100spp278.01 <- list(sim_278.01_100spp1, sim_278.01_100spp2, sim_278.01_100spp3, sim_278.01_100spp4,
                           sim_278.01_100spp5, sim_278.01_100spp6, sim_278.01_100spp7, sim_278.01_100spp8, 
                           sim_278.01_100spp9, sim_278.01_100spp10)
matrices100spp278.01 <- lapply(resultados100spp278.01,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.01)){
  matplot(resultados100spp278.01[[i]]$time, resultados100spp278.01[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.01)"))
}

tabla278.01_100spp <- valz(matrices100spp278.01)

sim_278.02_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp1")
sim_278.02_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp2")
sim_278.02_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp3")
sim_278.02_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp4")
sim_278.02_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp5")
sim_278.02_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp6")
sim_278.02_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp7")
sim_278.02_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp8")
sim_278.02_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp9")
sim_278.02_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.02_p08_m007_e033_100spp10")

resultados100spp278.02 <- list(sim_278.02_100spp1, sim_278.02_100spp2, sim_278.02_100spp3, sim_278.02_100spp4,
                           sim_278.02_100spp5, sim_278.02_100spp6, sim_278.02_100spp7, sim_278.02_100spp8, 
                           sim_278.02_100spp9, sim_278.02_100spp10)
matrices100spp278.02 <- lapply(resultados100spp278.02,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.02)){
  matplot(resultados100spp278.02[[i]]$time, resultados100spp278.02[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.02)"))
}

tabla278.02_100spp <- valz(matrices100spp278.02)

sim_278.03_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp1")
sim_278.03_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp2")
sim_278.03_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp3")
sim_278.03_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp4")
sim_278.03_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp5")
sim_278.03_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp6")
sim_278.03_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp7")
sim_278.03_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp8")
sim_278.03_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp9")
sim_278.03_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.03_p08_m007_e033_100spp10")

resultados100spp278.03 <- list(sim_278.03_100spp1, sim_278.03_100spp2, sim_278.03_100spp3, sim_278.03_100spp4,
                           sim_278.03_100spp5, sim_278.03_100spp6, sim_278.03_100spp7, sim_278.03_100spp8, 
                           sim_278.03_100spp9, sim_278.03_100spp10)
matrices100spp278.03 <- lapply(resultados100spp278.03,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.03)){
  matplot(resultados100spp278.03[[i]]$time, resultados100spp278.03[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.03)"))
}

tabla278.03_100spp <- valz(matrices100spp278.03)


sim_278.04_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp1")
sim_278.04_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp2")
sim_278.04_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp3")
sim_278.04_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp4")
sim_278.04_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp5")
sim_278.04_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp6")
sim_278.04_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp7")
sim_278.04_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp8")
sim_278.04_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp8")
sim_278.04_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.04_p08_m007_e033_100spp10")

resultados100spp278.04 <- list(sim_278.04_100spp1, sim_278.04_100spp2, sim_278.04_100spp3, sim_278.04_100spp4,
                           sim_278.04_100spp5, sim_278.04_100spp6, sim_278.04_100spp7, sim_278.04_100spp8, 
                           sim_278.04_100spp9, sim_278.04_100spp10)
matrices100spp278.04 <- lapply(resultados100spp278.04,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.04)){
  matplot(resultados100spp278.04[[i]]$time, resultados100spp278.04[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.04)"))
}

tabla278.04_100spp <- valz(matrices100spp278.04)

sim_278.05_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp1")
sim_278.05_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp2")
sim_278.05_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp3")
sim_278.05_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp4")
sim_278.05_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp5")
sim_278.05_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp6")
sim_278.05_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp7")
sim_278.05_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp8")
sim_278.05_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp9")
sim_278.05_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.05_p08_m007_e033_100spp10")

resultados100spp278.05 <- list(sim_278.05_100spp1, sim_278.05_100spp2, sim_278.05_100spp3, sim_278.05_100spp4,
                           sim_278.05_100spp5, sim_278.05_100spp6, sim_278.05_100spp7, sim_278.05_100spp8, 
                           sim_278.05_100spp9, sim_278.05_100spp10)
matrices100spp278.05 <- lapply(resultados100spp278.05,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.05)){
  matplot(resultados100spp278.05[[i]]$time, resultados100spp278.05[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.05)"))
}

tabla278.05_100spp <- valz(matrices100spp278.05)

sim_278.06_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp1")
sim_278.06_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp2")
sim_278.06_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp3")
sim_278.06_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp4")
sim_278.06_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp5")
sim_278.06_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp6")
sim_278.06_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp7")
sim_278.06_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp8")
sim_278.06_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp9")
sim_278.06_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.06_p08_m007_e033_100spp10")

resultados100spp278.06 <- list(sim_278.06_100spp1, sim_278.06_100spp2, sim_278.06_100spp3, sim_278.06_100spp4,
                           sim_278.06_100spp5, sim_278.06_100spp6, sim_278.06_100spp7, sim_278.06_100spp8, 
                           sim_278.06_100spp9, sim_278.06_100spp10)
matrices100spp278.06 <- lapply(resultados100spp278.06,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.06)){
  matplot(resultados100spp278.06[[i]]$time, resultados100spp278.06[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.06)"))
}

tabla278.06_100spp <- valz(matrices100spp278.06)

sim_278.07_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp1")
sim_278.07_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp2")
sim_278.07_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp3")
sim_278.07_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp4")
sim_278.07_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp5")
sim_278.07_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp6")
sim_278.07_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp7")
sim_278.07_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp8")
sim_278.07_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp9")
sim_278.07_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.07_p08_m007_e033_100spp10")

resultados100spp278.07 <- list(sim_278.07_100spp1, sim_278.07_100spp2, sim_278.07_100spp3, sim_278.07_100spp4,
                           sim_278.07_100spp5, sim_278.07_100spp6, sim_278.07_100spp7, sim_278.07_100spp8, 
                           sim_278.07_100spp9, sim_278.07_100spp10)
matrices100spp278.07 <- lapply(resultados100spp278.07,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.07)){
  matplot(resultados100spp278.07[[i]]$time, resultados100spp278.07[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.07)"))
}

tabla278.07_100spp <- valz(matrices100spp278.07)


sim_278.08_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp1")
sim_278.08_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp2")
sim_278.08_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp3")
sim_278.08_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp4")
sim_278.08_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp5")
sim_278.08_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp6")
sim_278.08_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp7")
sim_278.08_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp8")
sim_278.08_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp9")
sim_278.08_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.08_p08_m007_e033_100spp10")

resultados100spp278.08 <- list(sim_278.08_100spp1, sim_278.08_100spp2, sim_278.08_100spp3, sim_278.08_100spp4,
                           sim_278.08_100spp5, sim_278.08_100spp6, sim_278.08_100spp7, sim_278.08_100spp8, 
                           sim_278.08_100spp9, sim_278.08_100spp10)
matrices100spp278.08 <- lapply(resultados100spp278.08,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.08)){
  matplot(resultados100spp278.08[[i]]$time, resultados100spp278.08[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.08)"))
}

tabla278.08_100spp <- valz(matrices100spp278.08)


sim_278.09_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp1")
sim_278.09_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp2")
sim_278.09_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp3")
sim_278.09_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp4")
sim_278.09_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp5")
sim_278.09_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp6")
sim_278.09_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp7")
sim_278.09_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp8")
sim_278.09_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp9")
sim_278.09_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.09_p08_m007_e033_100spp10")

resultados100spp278.09 <- list(sim_278.09_100spp1, sim_278.09_100spp2, sim_278.09_100spp3, sim_278.09_100spp4,
                           sim_278.09_100spp5, sim_278.09_100spp6, sim_278.09_100spp7, sim_278.09_100spp8, 
                           sim_278.09_100spp9, sim_278.09_100spp10)
matrices100spp278.09 <- lapply(resultados100spp278.09,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.09)){
  matplot(resultados100spp278.09[[i]]$time, resultados100spp278.09[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.09)"))
}

tabla278.09_100spp <- valz(matrices100spp278.09)


sim_278.1_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp1")
sim_278.1_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp2")
sim_278.1_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp3")
sim_278.1_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp4")
sim_278.1_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp5")
sim_278.1_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp6")
sim_278.1_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp7")
sim_278.1_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp8")
sim_278.1_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp9")
sim_278.1_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.1_p08_m007_e033_100spp10")

resultados100spp278.1 <- list(sim_278.1_100spp1, sim_278.1_100spp2, sim_278.1_100spp3, sim_278.1_100spp4,
                           sim_278.1_100spp5, sim_278.1_100spp6, sim_278.1_100spp7, sim_278.1_100spp8, 
                           sim_278.1_100spp9, sim_278.1_100spp10)
matrices100spp278.1 <- lapply(resultados100spp278.1,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.1)){
  matplot(resultados100spp278.1[[i]]$time, resultados100spp278.1[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.1)"))
}

tabla278.1_100spp <- valz(matrices100spp278.1)

sim_278.11_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp1")
sim_278.11_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp2")
sim_278.11_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp3")
sim_278.11_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp4")
sim_278.11_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp5")
sim_278.11_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp6")
sim_278.11_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp7")
sim_278.11_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp8")
sim_278.11_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp9")
sim_278.11_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.11_p08_m007_e033_100spp10")

resultados100spp278.11 <- list(sim_278.11_100spp1, sim_278.11_100spp2, sim_278.11_100spp3, sim_278.11_100spp4,
                           sim_278.11_100spp5, sim_278.11_100spp6, sim_278.11_100spp7, sim_278.11_100spp8, 
                           sim_278.11_100spp9, sim_278.11_100spp10)
matrices100spp278.11 <- lapply(resultados100spp278.11,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.11)){
  matplot(resultados100spp278.11[[i]]$time, resultados100spp278.11[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.11)"))
}

tabla278.11_100spp <- valz(matrices100spp278.11)


sim_278.12_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp1")
sim_278.12_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp2")
sim_278.12_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp3")
sim_278.12_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp4")
sim_278.12_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp5")
sim_278.12_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp6")
sim_278.12_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp7")
sim_278.12_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp8")
sim_278.12_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp9")
sim_278.12_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.12_p08_m007_e033_100spp10")

resultados100spp278.12 <- list(sim_278.12_100spp1, sim_278.12_100spp2, sim_278.12_100spp3, sim_278.12_100spp4,
                           sim_278.12_100spp5, sim_278.12_100spp6, sim_278.12_100spp7, sim_278.12_100spp8, 
                           sim_278.12_100spp9, sim_278.12_100spp10)
matrices100spp278.12 <- lapply(resultados100spp278.12,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.12)){
  matplot(resultados100spp278.12[[i]]$time, resultados100spp278.12[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.12)"))
}

tabla278.12_100spp <- valz(matrices100spp278.12)


sim_278.13_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp1")
sim_278.13_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp2")
sim_278.13_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp3")
sim_278.13_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp4")
sim_278.13_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp5")
sim_278.13_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp6")
sim_278.13_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp7")
sim_278.13_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp8")
sim_278.13_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp9")
sim_278.13_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.13_p08_m007_e033_100spp10")

resultados100spp278.13 <- list(sim_278.13_100spp1, sim_278.13_100spp2, sim_278.13_100spp3, sim_278.13_100spp4,
                           sim_278.13_100spp5, sim_278.13_100spp6, sim_278.13_100spp7, sim_278.13_100spp8, 
                           sim_278.13_100spp9, sim_278.13_100spp10)
matrices100spp278.13 <- lapply(resultados100spp278.13,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.13)){
  matplot(resultados100spp278.13[[i]]$time, resultados100spp278.13[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.13)"))
}

tabla278.13_100spp <- valz(matrices100spp278.13)

sim_278.14_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp1")
sim_278.14_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp2")
sim_278.14_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp3")
sim_278.14_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp4")
sim_278.14_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp5")
sim_278.14_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp6")
sim_278.14_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp7")
sim_278.14_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp8")
sim_278.14_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp9")
sim_278.14_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.14_p08_m007_e033_100spp10")

resultados100spp278.14 <- list(sim_278.14_100spp1, sim_278.14_100spp2, sim_278.14_100spp3, sim_278.14_100spp4,
                           sim_278.14_100spp5, sim_278.14_100spp6, sim_278.14_100spp7, sim_278.14_100spp8, 
                           sim_278.14_100spp9, sim_278.14_100spp10)
matrices100spp278.14 <- lapply(resultados100spp278.14,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.14)){
  matplot(resultados100spp278.14[[i]]$time, resultados100spp278.14[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.14)"))
}

tabla278.14_100spp <- valz(matrices100spp278.14)

sim_278.15_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp1")
sim_278.15_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp2")
sim_278.15_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp3")
sim_278.15_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp4")
sim_278.15_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp5")
sim_278.15_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp6")
sim_278.15_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp7")
sim_278.15_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp8")
sim_278.15_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp9")
sim_278.15_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.15_p08_m007_e033_100spp10")

resultados100spp278.15 <- list(sim_278.15_100spp1, sim_278.15_100spp2, sim_278.15_100spp3, sim_278.15_100spp4,
                           sim_278.15_100spp5, sim_278.15_100spp6, sim_278.15_100spp7, sim_278.15_100spp8, 
                           sim_278.15_100spp9, sim_278.15_100spp10)
matrices100spp278.15 <- lapply(resultados100spp278.15,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.15)){
  matplot(resultados100spp278.15[[i]]$time, resultados100spp278.15[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.15)"))
}

tabla278.15_100spp <- valz(matrices100spp278.15)

sim_278.16_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp1")
sim_278.16_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp2")
sim_278.16_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp3")
sim_278.16_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp4")
sim_278.16_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp5")
sim_278.16_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp6")
sim_278.16_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp7")
sim_278.16_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp8")
sim_278.16_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp9")
sim_278.16_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.16_p08_m007_e033_100spp10")

resultados100spp278.16 <- list(sim_278.16_100spp1, sim_278.16_100spp2, sim_278.16_100spp3, sim_278.16_100spp4,
                            sim_278.16_100spp5, sim_278.16_100spp6, sim_278.16_100spp7, sim_278.16_100spp8, 
                            sim_278.16_100spp9, sim_278.16_100spp10)
matrices100spp278.16 <- lapply(resultados100spp278.16,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.16)){
  matplot(resultados100spp278.16[[i]]$time, resultados100spp278.16[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.16)"))
}

tabla278.16_100spp <- valz(matrices100spp278.16)

sim_278.17_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp1")
sim_278.17_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp2")
sim_278.17_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp3")
sim_278.17_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp4")
sim_278.17_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp5")
sim_278.17_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp6")
sim_278.17_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp7")
sim_278.17_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp8")
sim_278.17_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp9")
sim_278.17_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.17_p08_m007_e033_100spp10")

resultados100spp278.17 <- list(sim_278.17_100spp1, sim_278.17_100spp2, sim_278.17_100spp3, sim_278.17_100spp4,
                            sim_278.17_100spp5, sim_278.17_100spp6, sim_278.17_100spp7, sim_278.17_100spp8, 
                            sim_278.17_100spp9, sim_278.17_100spp10)
matrices100spp278.17 <- lapply(resultados100spp278.17,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.17)){
  matplot(resultados100spp278.17[[i]]$time, resultados100spp278.17[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.17)"))
}

tabla278.17_100spp <- valz(matrices100spp278.17)

sim_278.18_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp1")
sim_278.18_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp2")
sim_278.18_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp3")
sim_278.18_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp4")
sim_278.18_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp5")
sim_278.18_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp6")
sim_278.18_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp7")
sim_278.18_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp8")
sim_278.18_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp9")
sim_278.18_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.18_p08_m007_e033_100spp10")

resultados100spp278.18 <- list(sim_278.18_100spp1, sim_278.18_100spp2, sim_278.18_100spp3, sim_278.18_100spp4,
                            sim_278.18_100spp5, sim_278.18_100spp6, sim_278.18_100spp7, sim_278.18_100spp8, 
                            sim_278.18_100spp9, sim_278.18_100spp10)
matrices100spp278.18 <- lapply(resultados100spp278.18,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.18)){
  matplot(resultados100spp278.18[[i]]$time, resultados100spp278.18[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.18)"))
}

tabla278.18_100spp <- valz(matrices100spp278.18)

sim_278.19_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp1")
sim_278.19_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp2")
sim_278.19_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp3")
sim_278.19_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp4")
sim_278.19_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp5")
sim_278.19_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp6")
sim_278.19_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp7")
sim_278.19_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp8")
sim_278.19_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp9")
sim_278.19_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.19_p08_m007_e033_100spp10")

resultados100spp278.19 <- list(sim_278.19_100spp1, sim_278.19_100spp2, sim_278.19_100spp3, sim_278.19_100spp4,
                            sim_278.19_100spp5, sim_278.19_100spp6, sim_278.19_100spp7, sim_278.19_100spp8, 
                            sim_278.19_100spp9, sim_278.19_100spp10)
matrices100spp278.19 <- lapply(resultados100spp278.19,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.19)){
  matplot(resultados100spp278.19[[i]]$time, resultados100spp278.19[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.19)"))
}

tabla278.19_100spp <- valz(matrices100spp278.19)

sim_278.20_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp1")
sim_278.20_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp2")
sim_278.20_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp3")
sim_278.20_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp4")
sim_278.20_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp5")
sim_278.20_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp6")
sim_278.20_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp7")
sim_278.20_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp8")
sim_278.20_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp9")
sim_278.20_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.2_p08_m007_e033_100spp10")

resultados100spp278.20 <- list(sim_278.20_100spp1, sim_278.20_100spp2, sim_278.20_100spp3, sim_278.20_100spp4,
                            sim_278.20_100spp5, sim_278.20_100spp6, sim_278.20_100spp7, sim_278.20_100spp8, 
                            sim_278.20_100spp9, sim_278.20_100spp10)
matrices100spp278.20 <- lapply(resultados100spp278.20,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.20)){
  matplot(resultados100spp278.20[[i]]$time, resultados100spp278.20[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.20)"))
}

tabla278.20_100spp <- valz(matrices100spp278.20)

sim_278.21_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp1")
sim_278.21_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp2")
sim_278.21_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp3")
sim_278.21_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp4")
sim_278.21_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp5")
sim_278.21_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp6")
sim_278.21_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp7")
sim_278.21_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp8")
sim_278.21_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp9")
sim_278.21_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.21_p08_m007_e033_100spp10")

resultados100spp278.21 <- list(sim_278.21_100spp1, sim_278.21_100spp2, sim_278.21_100spp3, sim_278.21_100spp4,
                               sim_278.21_100spp5, sim_278.21_100spp6, sim_278.21_100spp7, sim_278.21_100spp8, 
                               sim_278.21_100spp9, sim_278.21_100spp10)
matrices100spp278.21 <- lapply(resultados100spp278.21,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.21)){
  matplot(resultados100spp278.21[[i]]$time, resultados100spp278.21[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.21)"))
}

tabla278.21_100spp <- valz(matrices100spp278.21)


sim_278.22_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp1")
sim_278.22_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp2")
sim_278.22_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp3")
sim_278.22_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp4")
sim_278.22_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp5")
sim_278.22_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp6")
sim_278.22_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp7")
sim_278.22_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp8")
sim_278.22_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp9")
sim_278.22_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.22_p08_m007_e033_100spp10")

resultados100spp278.22 <- list(sim_278.22_100spp1, sim_278.22_100spp2, sim_278.22_100spp3, sim_278.22_100spp4,
                               sim_278.22_100spp5, sim_278.22_100spp6, sim_278.22_100spp7, sim_278.22_100spp8, 
                               sim_278.22_100spp9, sim_278.22_100spp10)
matrices100spp278.22 <- lapply(resultados100spp278.22,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.22)){
  matplot(resultados100spp278.22[[i]]$time, resultados100spp278.22[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.22)"))
}

tabla278.22_100spp <- valz(matrices100spp278.22)


sim_278.23_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp1")
sim_278.23_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp2")
sim_278.23_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp3")
sim_278.23_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp4")
sim_278.23_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp5")
sim_278.23_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp6")
sim_278.23_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp7")
sim_278.23_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp8")
sim_278.23_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp9")
sim_278.23_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.23_p08_m007_e033_100spp10")

resultados100spp278.23 <- list(sim_278.23_100spp1, sim_278.23_100spp2, sim_278.23_100spp3, sim_278.23_100spp4,
                               sim_278.23_100spp5, sim_278.23_100spp6, sim_278.23_100spp7, sim_278.23_100spp8, 
                               sim_278.23_100spp9, sim_278.23_100spp10)
matrices100spp278.23 <- lapply(resultados100spp278.23,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.23)){
  matplot(resultados100spp278.23[[i]]$time, resultados100spp278.23[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.23)"))
}

tabla278.23_100spp <- valz(matrices100spp278.23)


sim_278.24_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp1")
sim_278.24_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp2")
sim_278.24_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp3")
sim_278.24_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp4")
sim_278.24_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp5")
sim_278.24_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp6")
sim_278.24_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp7")
sim_278.24_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp8")
sim_278.24_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp9")
sim_278.24_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.24_p08_m007_e033_100spp10")

resultados100spp278.24 <- list(sim_278.24_100spp1, sim_278.24_100spp2, sim_278.24_100spp3, sim_278.24_100spp4,
                               sim_278.24_100spp5, sim_278.24_100spp6, sim_278.24_100spp7, sim_278.24_100spp8, 
                               sim_278.24_100spp9, sim_278.24_100spp10)
matrices100spp278.24 <- lapply(resultados100spp278.24,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.24)){
  matplot(resultados100spp278.24[[i]]$time, resultados100spp278.24[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.24)"))
}

tabla278.24_100spp <- valz(matrices100spp278.24)



sim_278.25_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp1")
sim_278.25_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp2")
sim_278.25_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp3")
sim_278.25_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp4")
sim_278.25_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp5")
sim_278.25_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp6")
sim_278.25_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp7")
sim_278.25_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp8")
sim_278.25_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp9")
sim_278.25_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.25_p08_m007_e033_100spp10")

resultados100spp278.25 <- list(sim_278.25_100spp1, sim_278.25_100spp2, sim_278.25_100spp3, sim_278.25_100spp4,
                               sim_278.25_100spp5, sim_278.25_100spp6, sim_278.25_100spp7, sim_278.25_100spp8, 
                               sim_278.25_100spp9, sim_278.25_100spp10)
matrices100spp278.25 <- lapply(resultados100spp278.25,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.25)){
  matplot(resultados100spp278.25[[i]]$time, resultados100spp278.25[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.25)"))
}

tabla278.25_100spp <- valz(matrices100spp278.25)


sim_278.26_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp1")
sim_278.26_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp2")
sim_278.26_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp3")
sim_278.26_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp4")
sim_278.26_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp5")
sim_278.26_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp6")
sim_278.26_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp7")
sim_278.26_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp8")
sim_278.26_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp9")
sim_278.26_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.26_p08_m007_e033_100spp10")

resultados100spp278.26 <- list(sim_278.26_100spp1, sim_278.26_100spp2, sim_278.26_100spp3, sim_278.26_100spp4,
                               sim_278.26_100spp5, sim_278.26_100spp6, sim_278.26_100spp7, sim_278.26_100spp8, 
                               sim_278.26_100spp9, sim_278.26_100spp10)
matrices100spp278.26 <- lapply(resultados100spp278.26,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.26)){
  matplot(resultados100spp278.26[[i]]$time, resultados100spp278.26[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.26)"))
}

tabla278.26_100spp <- valz(matrices100spp278.26)


sim_278.27_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp1")
sim_278.27_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp2")
sim_278.27_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp3")
sim_278.27_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp4")
sim_278.27_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp5")
sim_278.27_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp6")
sim_278.27_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp7")
sim_278.27_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp8")
sim_278.27_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp9")
sim_278.27_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.27_p08_m007_e033_100spp10")

resultados100spp278.27 <- list(sim_278.27_100spp1, sim_278.27_100spp2, sim_278.27_100spp3, sim_278.27_100spp4,
                               sim_278.27_100spp5, sim_278.27_100spp6, sim_278.27_100spp7, sim_278.27_100spp8, 
                               sim_278.27_100spp9, sim_278.27_100spp10)
matrices100spp278.27 <- lapply(resultados100spp278.27,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.27)){
  matplot(resultados100spp278.27[[i]]$time, resultados100spp278.27[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.27)"))
}

tabla278.27_100spp <- valz(matrices100spp278.27)



sim_278.28_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp1")
sim_278.28_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp2")
sim_278.28_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp3")
sim_278.28_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp4")
sim_278.28_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp5")
sim_278.28_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp6")
sim_278.28_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp7")
sim_278.28_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp8")
sim_278.28_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp9")
sim_278.28_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.28_p08_m007_e033_100spp10")

resultados100spp278.28 <- list(sim_278.28_100spp1, sim_278.28_100spp2, sim_278.28_100spp3, sim_278.28_100spp4,
                               sim_278.28_100spp5, sim_278.28_100spp6, sim_278.28_100spp7, sim_278.28_100spp8, 
                               sim_278.28_100spp9, sim_278.28_100spp10)
matrices100spp278.28 <- lapply(resultados100spp278.28,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.28)){
  matplot(resultados100spp278.28[[i]]$time, resultados100spp278.28[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.28)"))
}

tabla278.28_100spp <- valz(matrices100spp278.28)


sim_278.29_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp1")
sim_278.29_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp2")
sim_278.29_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp3")
sim_278.29_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp4")
sim_278.29_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp5")
sim_278.29_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp6")
sim_278.29_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp7")
sim_278.29_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp8")
sim_278.29_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp9")
sim_278.29_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.29_p08_m007_e033_100spp10")

resultados100spp278.29 <- list(sim_278.29_100spp1, sim_278.29_100spp2, sim_278.29_100spp3, sim_278.29_100spp4,
                               sim_278.29_100spp5, sim_278.29_100spp6, sim_278.29_100spp7, sim_278.29_100spp8, 
                               sim_278.29_100spp9, sim_278.29_100spp10)
matrices100spp278.29 <- lapply(resultados100spp278.29,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.29)){
  matplot(resultados100spp278.29[[i]]$time, resultados100spp278.29[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.29)"))
}

tabla278.29_100spp <- valz(matrices100spp278.29)


sim_278.3_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp1")
sim_278.3_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp2")
sim_278.3_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp3")
sim_278.3_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp4")
sim_278.3_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp5")
sim_278.3_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp6")
sim_278.3_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp7")
sim_278.3_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp8")
sim_278.3_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp9")
sim_278.3_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.3_p08_m007_e033_100spp10")

resultados100spp278.3 <- list(sim_278.3_100spp1, sim_278.3_100spp2, sim_278.3_100spp3, sim_278.3_100spp4,
                               sim_278.3_100spp5, sim_278.3_100spp6, sim_278.3_100spp7, sim_278.3_100spp8, 
                               sim_278.3_100spp9, sim_278.3_100spp10)
matrices100spp278.3 <- lapply(resultados100spp278.3,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.3)){
  matplot(resultados100spp278.3[[i]]$time, resultados100spp278.3[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.3)"))
}

tabla278.3_100spp <- valz(matrices100spp278.3)


sim_278.31_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp1")
sim_278.31_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp2")
sim_278.31_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp3")
sim_278.31_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp4")
sim_278.31_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp5")
sim_278.31_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp6")
sim_278.31_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp7")
sim_278.31_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp8")
sim_278.31_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp9")
sim_278.31_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.31_p08_m007_e033_100spp10")

resultados100spp278.31 <- list(sim_278.31_100spp1, sim_278.31_100spp2, sim_278.31_100spp3, sim_278.31_100spp4,
                               sim_278.31_100spp5, sim_278.31_100spp6, sim_278.31_100spp7, sim_278.31_100spp8, 
                               sim_278.31_100spp9, sim_278.31_100spp10)
matrices100spp278.31 <- lapply(resultados100spp278.31,  function(x) x[setdiff(names(x), c("X", "time"))])

for (i in 1:length(resultados100spp278.31)){
  matplot(resultados100spp278.31[[i]]$time, resultados100spp278.31[[i]][, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
          xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                number_species, "Species", "(278.31)"))
}

tabla278.31_100spp <- valz(matrices100spp278.31)


sim_278.32_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp1")
sim_278.32_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp2")
sim_278.32_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp3")
sim_278.32_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp4")
sim_278.32_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp5")
sim_278.32_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp6")
sim_278.32_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp7")
sim_278.32_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp8")
sim_278.32_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp9")
sim_278.32_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.32_p08_m007_e033_100spp10")


sim_278.33_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp1")
sim_278.33_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp2")
sim_278.33_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp3")
sim_278.33_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp4")
sim_278.33_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp5")
sim_278.33_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp6")
sim_278.33_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp7")
sim_278.33_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp8")
sim_278.33_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp9")
sim_278.33_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.33_p08_m007_e033_100spp10")

sim_278.34_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp1")
sim_278.34_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp2")
sim_278.34_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp3")
sim_278.34_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp4")
sim_278.34_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp5")
sim_278.34_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp6")
sim_278.34_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp7")
sim_278.34_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp8")
sim_278.34_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp9")
sim_278.34_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.34_p08_m007_e033_100spp10")

sim_278.35_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp1")
sim_278.35_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp2")
sim_278.35_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp3")
sim_278.35_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp4")
sim_278.35_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp5")
sim_278.35_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp6")
sim_278.35_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp7")
sim_278.35_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp8")
sim_278.35_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp9")
sim_278.35_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.35_p08_m007_e033_100spp10")

sim_278.36_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp1")
sim_278.36_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp2")
sim_278.36_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp3")
sim_278.36_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp4")
sim_278.36_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp5")
sim_278.36_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp6")
sim_278.36_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp7")
sim_278.36_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp8")
sim_278.36_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp9")
sim_278.36_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.36_p08_m007_e033_100spp10")

sim_278.37_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp1")
sim_278.37_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp2")
sim_278.37_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp3")
sim_278.37_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp4")
sim_278.37_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp5")
sim_278.37_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp6")
sim_278.37_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp7")
sim_278.37_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp8")
sim_278.37_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp9")
sim_278.37_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.37_p08_m007_e033_100spp10")

sim_278.38_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp1")
sim_278.38_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp2")
sim_278.38_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp3")
sim_278.38_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp4")
sim_278.38_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp5")
sim_278.38_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp6")
sim_278.38_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp7")
sim_278.38_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp8")
sim_278.38_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp9")
sim_278.38_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.38_p08_m007_e033_100spp10")

sim_278.39_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp1")
sim_278.39_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp2")
sim_278.39_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp3")
sim_278.39_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp4")
sim_278.39_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp5")
sim_278.39_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp6")
sim_278.39_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp7")
sim_278.39_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp8")
sim_278.39_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp9")
sim_278.39_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.39_p08_m007_e033_100spp10")

sim_278.4_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp1")
sim_278.4_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp2")
sim_278.4_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp3")
sim_278.4_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp4")
sim_278.4_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp5")
sim_278.4_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp6")
sim_278.4_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp7")
sim_278.4_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp8")
sim_278.4_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp9")
sim_278.4_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.4_p08_m007_e033_100spp10")

sim_278.41_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp1")
sim_278.41_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp2")
sim_278.41_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp3")
sim_278.41_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp4")
sim_278.41_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp5")
sim_278.41_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp6")
sim_278.41_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp7")
sim_278.41_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp8")
sim_278.41_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp9")
sim_278.41_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.41_p08_m007_e033_100spp10")

sim_278.42_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp1")
sim_278.42_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp2")
sim_278.42_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp3")
sim_278.42_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp4")
sim_278.42_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp5")
sim_278.42_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp6")
sim_278.42_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp7")
sim_278.42_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp8")
sim_278.42_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp9")
sim_278.42_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.42_p08_m007_e033_100spp10")

sim_278.43_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp1")
sim_278.43_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp2")
sim_278.43_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp3")
sim_278.43_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp4")
sim_278.43_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp5")
sim_278.43_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp6")
sim_278.43_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp7")
sim_278.43_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp8")
sim_278.43_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp9")
sim_278.43_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.43_p08_m007_e033_100spp10")

sim_278.44_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp1")
sim_278.44_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp2")
sim_278.44_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp3")
sim_278.44_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp4")
sim_278.44_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp5")
sim_278.44_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp6")
sim_278.44_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp7")
sim_278.44_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp8")
sim_278.44_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp9")
sim_278.44_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.44_p08_m007_e033_100spp10")

sim_278.45_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp1")
sim_278.45_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp2")
sim_278.45_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp3")
sim_278.45_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp4")
sim_278.45_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp5")
sim_278.45_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp6")
sim_278.45_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp7")
sim_278.45_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp8")
sim_278.45_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp9")
sim_278.45_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.45_p08_m007_e033_100spp10")

sim_278.46_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp1")
sim_278.46_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp2")
sim_278.46_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp3")
sim_278.46_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp4")
sim_278.46_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp5")
sim_278.46_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp6")
sim_278.46_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp7")
sim_278.46_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp8")
sim_278.46_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp9")
sim_278.46_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.46_p08_m007_e033_100spp10")

sim_278.47_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp1")
sim_278.47_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp2")
sim_278.47_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp3")
sim_278.47_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp4")
sim_278.47_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp5")
sim_278.47_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp6")
sim_278.47_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp7")
sim_278.47_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp8")
sim_278.47_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp9")
sim_278.47_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.47_p08_m007_e033_100spp10")

sim_278.48_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp1")
sim_278.48_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp2")
sim_278.48_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp3")
sim_278.48_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp4")
sim_278.48_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp5")
sim_278.48_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp6")
sim_278.48_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp7")
sim_278.48_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp8")
sim_278.48_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp9")
sim_278.48_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.48_p08_m007_e033_100spp10")

sim_278.49_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp1")
sim_278.49_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp2")
sim_278.49_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp3")
sim_278.49_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp4")
sim_278.49_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp5")
sim_278.49_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp6")
sim_278.49_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp7")
sim_278.49_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp8")
sim_278.49_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp9")
sim_278.49_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.49_p08_m007_e033_100spp10")

sim_278.5_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp1")
sim_278.5_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp2")
sim_278.5_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp3")
sim_278.5_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp4")
sim_278.5_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp5")
sim_278.5_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp6")
sim_278.5_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp7")
sim_278.5_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp8")
sim_278.5_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp9")
sim_278.5_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.5_p08_m007_e033_100spp10")

sim_278.51_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp1")
sim_278.51_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp2")
sim_278.51_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp3")
sim_278.51_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp4")
sim_278.51_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp5")
sim_278.51_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp6")
sim_278.51_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp7")
sim_278.51_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp8")
sim_278.51_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp9")
sim_278.51_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.51_p08_m007_e033_100spp10")

sim_278.52_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp1")
sim_278.52_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp2")
sim_278.52_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp3")
sim_278.52_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp4")
sim_278.52_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp5")
sim_278.52_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp6")
sim_278.52_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp7")
sim_278.52_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp8")
sim_278.52_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp9")
sim_278.52_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.52_p08_m007_e033_100spp10")

sim_278.53_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp1")
sim_278.53_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp2")
sim_278.53_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp3")
sim_278.53_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp4")
sim_278.53_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp5")
sim_278.53_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp6")
sim_278.53_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp7")
sim_278.53_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp8")
sim_278.53_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp9")
sim_278.53_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.53_p08_m007_e033_100spp10")

sim_278.54_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp1")
sim_278.54_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp2")
sim_278.54_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp3")
sim_278.54_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp4")
sim_278.54_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp5")
sim_278.54_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp6")
sim_278.54_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp7")
sim_278.54_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp8")
sim_278.54_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp9")
sim_278.54_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.54_p08_m007_e033_100spp10")

sim_278.55_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp1")
sim_278.55_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp2")
sim_278.55_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp3")
sim_278.55_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp4")
sim_278.55_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp5")
sim_278.55_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp6")
sim_278.55_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp7")
sim_278.55_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp8")
sim_278.55_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp9")
sim_278.55_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.55_p08_m007_e033_100spp10")

sim_278.56_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp1")
sim_278.56_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp2")
sim_278.56_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp3")
sim_278.56_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp4")
sim_278.56_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp5")
sim_278.56_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp6")
sim_278.56_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp7")
sim_278.56_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp8")
sim_278.56_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp9")
sim_278.56_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.56_p08_m007_e033_100spp10")

sim_278.57_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp1")
sim_278.57_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp2")
sim_278.57_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp3")
sim_278.57_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp4")
sim_278.57_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp5")
sim_278.57_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp6")
sim_278.57_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp7")
sim_278.57_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp8")
sim_278.57_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp9")
sim_278.57_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.57_p08_m007_e033_100spp10")

sim_278.58_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp1")
sim_278.58_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp2")
sim_278.58_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp3")
sim_278.58_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp4")
sim_278.58_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp5")
sim_278.58_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp6")
sim_278.58_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp7")
sim_278.58_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp8")
sim_278.58_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp9")
sim_278.58_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.58_p08_m007_e033_100spp10")

sim_278.59_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp1")
sim_278.59_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp2")
sim_278.59_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp3")
sim_278.59_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp4")
sim_278.59_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp5")
sim_278.59_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp6")
sim_278.59_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp7")
sim_278.59_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp8")
sim_278.59_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp9")
sim_278.59_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.59_p08_m007_e033_100spp10")

sim_278.6_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp1")
sim_278.6_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp2")
sim_278.6_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp3")
sim_278.6_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp4")
sim_278.6_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp5")
sim_278.6_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp6")
sim_278.6_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp7")
sim_278.6_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp8")
sim_278.6_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp9")
sim_278.6_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.6_p08_m007_e033_100spp10")

sim_278.61_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp1")
sim_278.61_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp2")
sim_278.61_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp3")
sim_278.61_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp4")
sim_278.61_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp5")
sim_278.61_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp6")
sim_278.61_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp7")
sim_278.61_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp8")
sim_278.61_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp9")
sim_278.61_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.61_p08_m007_e033_100spp10")

sim_278.62_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp1")
sim_278.62_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp2")
sim_278.62_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp3")
sim_278.62_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp4")
sim_278.62_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp5")
sim_278.62_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp6")
sim_278.62_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp7")
sim_278.62_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp8")
sim_278.62_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp9")
sim_278.62_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.62_p08_m007_e033_100spp10")

sim_278.63_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp1")
sim_278.63_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp2")
sim_278.63_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp3")
sim_278.63_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp4")
sim_278.63_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp5")
sim_278.63_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp6")
sim_278.63_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp7")
sim_278.63_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp8")
sim_278.63_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp9")
sim_278.63_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.63_p08_m007_e033_100spp10")

sim_278.64_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp1")
sim_278.64_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp2")
sim_278.64_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp3")
sim_278.64_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp4")
sim_278.64_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp5")
sim_278.64_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp6")
sim_278.64_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp7")
sim_278.64_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp8")
sim_278.64_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp9")
sim_278.64_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.64_p08_m007_e033_100spp10")

sim_278.65_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp1")
sim_278.65_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp2")
sim_278.65_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp3")
sim_278.65_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp4")
sim_278.65_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp5")
sim_278.65_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp6")
sim_278.65_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp7")
sim_278.65_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp8")
sim_278.65_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp9")
sim_278.65_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.65_p08_m007_e033_100spp10")

sim_278.66_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp1")
sim_278.66_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp2")
sim_278.66_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp3")
sim_278.66_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp4")
sim_278.66_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp5")
sim_278.66_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp6")
sim_278.66_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp7")
sim_278.66_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp8")
sim_278.66_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp9")
sim_278.66_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.66_p08_m007_e033_100spp10")

sim_278.67_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp1")
sim_278.67_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp2")
sim_278.67_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp3")
sim_278.67_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp4")
sim_278.67_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp5")
sim_278.67_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp6")
sim_278.67_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp7")
sim_278.67_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp8")
sim_278.67_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp9")
sim_278.67_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.67_p08_m007_e033_100spp10")

sim_278.68_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp1")
sim_278.68_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp2")
sim_278.68_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp3")
sim_278.68_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp4")
sim_278.68_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp5")
sim_278.68_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp6")
sim_278.68_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp7")
sim_278.68_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp8")
sim_278.68_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp9")
sim_278.68_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.68_p08_m007_e033_100spp10")

sim_278.69_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp1")
sim_278.69_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp2")
sim_278.69_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp3")
sim_278.69_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp4")
sim_278.69_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp5")
sim_278.69_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp6")
sim_278.69_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp7")
sim_278.69_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp8")
sim_278.69_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp9")
sim_278.69_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.69_p08_m007_e033_100spp10")

sim_278.7_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp1")
sim_278.7_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp2")
sim_278.7_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp3")
sim_278.7_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp4")
sim_278.7_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp5")
sim_278.7_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp6")
sim_278.7_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp7")
sim_278.7_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp8")
sim_278.7_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp9")
sim_278.7_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.7_p08_m007_e033_100spp10")

sim_278.71_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp1")
sim_278.71_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp2")
sim_278.71_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp3")
sim_278.71_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp4")
sim_278.71_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp5")
sim_278.71_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp6")
sim_278.71_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp7")
sim_278.71_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp8")
sim_278.71_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp9")
sim_278.71_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.71_p08_m007_e033_100spp10")

sim_278.72_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp1")
sim_278.72_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp2")
sim_278.72_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp3")
sim_278.72_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp4")
sim_278.72_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp5")
sim_278.72_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp6")
sim_278.72_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp7")
sim_278.72_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp8")
sim_278.72_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp9")
sim_278.72_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.72_p08_m007_e033_100spp10")

sim_278.73_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp1")
sim_278.73_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp2")
sim_278.73_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp3")
sim_278.73_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp4")
sim_278.73_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp5")
sim_278.73_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp6")
sim_278.73_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp7")
sim_278.73_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp8")
sim_278.73_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp9")
sim_278.73_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.73_p08_m007_e033_100spp10")

sim_278.74_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp1")
sim_278.74_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp2")
sim_278.74_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp3")
sim_278.74_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp4")
sim_278.74_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp5")
sim_278.74_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp6")
sim_278.74_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp7")
sim_278.74_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp8")
sim_278.74_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp9")
sim_278.74_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.74_p08_m007_e033_100spp10")

sim_278.75_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp1")
sim_278.75_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp2")
sim_278.75_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp3")
sim_278.75_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp4")
sim_278.75_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp5")
sim_278.75_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp6")
sim_278.75_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp7")
sim_278.75_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp8")
sim_278.75_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp9")
sim_278.75_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.75_p08_m007_e033_100spp10")

sim_278.76_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp1")
sim_278.76_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp2")
sim_278.76_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp3")
sim_278.76_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp4")
sim_278.76_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp5")
sim_278.76_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp6")
sim_278.76_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp7")
sim_278.76_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp8")
sim_278.76_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp9")
sim_278.76_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.76_p08_m007_e033_100spp10")

sim_278.77_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp1")
sim_278.77_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp2")
sim_278.77_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp3")
sim_278.77_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp4")
sim_278.77_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp5")
sim_278.77_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp6")
sim_278.77_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp7")
sim_278.77_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp8")
sim_278.77_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp9")
sim_278.77_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.77_p08_m007_e033_100spp10")

sim_278.78_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp1")
sim_278.78_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp2")
sim_278.78_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp3")
sim_278.78_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp4")
sim_278.78_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp5")
sim_278.78_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp6")
sim_278.78_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp7")
sim_278.78_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp8")
sim_278.78_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp9")
sim_278.78_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.78_p08_m007_e033_100spp10")

sim_278.79_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp1")
sim_278.79_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp2")
sim_278.79_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp3")
sim_278.79_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp4")
sim_278.79_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp5")
sim_278.79_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp6")
sim_278.79_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp7")
sim_278.79_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp8")
sim_278.79_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp9")
sim_278.79_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.79_p08_m007_e033_100spp10")

sim_278.8_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp1")
sim_278.8_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp2")
sim_278.8_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp3")
sim_278.8_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp4")
sim_278.8_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp5")
sim_278.8_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp6")
sim_278.8_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp7")
sim_278.8_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp8")
sim_278.8_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp9")
sim_278.8_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.8_p08_m007_e033_100spp10")

sim_278.81_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp1")
sim_278.81_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp2")
sim_278.81_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp3")
sim_278.81_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp4")
sim_278.81_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp5")
sim_278.81_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp6")
sim_278.81_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp7")
sim_278.81_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp8")
sim_278.81_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp9")
sim_278.81_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.81_p08_m007_e033_100spp10")

sim_278.82_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp1")
sim_278.82_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp2")
sim_278.82_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp3")
sim_278.82_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp4")
sim_278.82_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp5")
sim_278.82_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp6")
sim_278.82_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp7")
sim_278.82_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp8")
sim_278.82_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp9")
sim_278.82_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.82_p08_m007_e033_100spp10")

sim_278.83_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp1")
sim_278.83_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp2")
sim_278.83_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp3")
sim_278.83_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp4")
sim_278.83_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp5")
sim_278.83_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp6")
sim_278.83_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp7")
sim_278.83_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp8")
sim_278.83_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp9")
sim_278.83_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.83_p08_m007_e033_100spp10")

sim_278.84_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp1")
sim_278.84_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp2")
sim_278.84_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp3")
sim_278.84_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp4")
sim_278.84_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp5")
sim_278.84_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp6")
sim_278.84_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp7")
sim_278.84_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp8")
sim_278.84_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp9")
sim_278.84_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.84_p08_m007_e033_100spp10")

sim_278.85_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp1")
sim_278.85_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp2")
sim_278.85_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp3")
sim_278.85_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp4")
sim_278.85_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp5")
sim_278.85_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp6")
sim_278.85_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp7")
sim_278.85_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp8")
sim_278.85_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp9")
sim_278.85_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.85_p08_m007_e033_100spp10")

sim_278.86_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp1")
sim_278.86_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp2")
sim_278.86_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp3")
sim_278.86_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp4")
sim_278.86_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp5")
sim_278.86_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp6")
sim_278.86_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp7")
sim_278.86_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp8")
sim_278.86_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp9")
sim_278.86_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.86_p08_m007_e033_100spp10")

sim_278.87_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp1")
sim_278.87_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp2")
sim_278.87_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp3")
sim_278.87_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp4")
sim_278.87_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp5")
sim_278.87_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp6")
sim_278.87_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp7")
sim_278.87_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp8")
sim_278.87_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp9")
sim_278.87_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.87_p08_m007_e033_100spp10")

sim_278.88_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp1")
sim_278.88_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp2")
sim_278.88_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp3")
sim_278.88_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp4")
sim_278.88_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp5")
sim_278.88_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp6")
sim_278.88_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp7")
sim_278.88_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp8")
sim_278.88_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp9")
sim_278.88_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.88_p08_m007_e033_100spp10")

sim_278.89_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp1")
sim_278.89_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp2")
sim_278.89_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp3")
sim_278.89_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp4")
sim_278.89_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp5")
sim_278.89_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp6")
sim_278.89_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp7")
sim_278.89_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp8")
sim_278.89_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp9")
sim_278.89_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.89_p08_m007_e033_100spp10")

sim_278.9_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp1")
sim_278.9_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp2")
sim_278.9_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp3")
sim_278.9_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp4")
sim_278.9_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp5")
sim_278.9_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp6")
sim_278.9_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp7")
sim_278.9_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp8")
sim_278.9_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp9")
sim_278.9_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.9_p08_m007_e033_100spp10")

sim_278.91_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp1")
sim_278.91_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp2")
sim_278.91_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp3")
sim_278.91_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp4")
sim_278.91_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp5")
sim_278.91_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp6")
sim_278.91_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp7")
sim_278.91_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp8")
sim_278.91_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp9")
sim_278.91_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.91_p08_m007_e033_100spp10")

sim_278.92_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp1")
sim_278.92_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp2")
sim_278.92_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp3")
sim_278.92_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp4")
sim_278.92_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp5")
sim_278.92_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp6")
sim_278.92_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp7")
sim_278.92_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp8")
sim_278.92_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp9")
sim_278.92_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.92_p08_m007_e033_100spp10")

sim_278.93_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp1")
sim_278.93_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp2")
sim_278.93_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp3")
sim_278.93_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp4")
sim_278.93_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp5")
sim_278.93_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp6")
sim_278.93_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp7")
sim_278.93_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp8")
sim_278.93_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp9")
sim_278.93_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.93_p08_m007_e033_100spp10")

sim_278.94_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp1")
sim_278.94_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp2")
sim_278.94_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp3")
sim_278.94_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp4")
sim_278.94_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp5")
sim_278.94_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp6")
sim_278.94_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp7")
sim_278.94_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp8")
sim_278.94_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp9")
sim_278.94_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.94_p08_m007_e033_100spp10")

sim_278.95_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp1")
sim_278.95_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp2")
sim_278.95_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp3")
sim_278.95_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp4")
sim_278.95_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp5")
sim_278.95_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp6")
sim_278.95_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp7")
sim_278.95_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp8")
sim_278.95_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp9")
sim_278.95_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.95_p08_m007_e033_100spp10")

sim_278.96_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp1")
sim_278.96_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp2")
sim_278.96_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp3")
sim_278.96_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp4")
sim_278.96_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp5")
sim_278.96_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp6")
sim_278.96_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp7")
sim_278.96_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp8")
sim_278.96_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp9")
sim_278.96_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.96_p08_m007_e033_100spp10")

sim_278.97_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp1")
sim_278.97_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp2")
sim_278.97_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp3")
sim_278.97_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp4")
sim_278.97_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp5")
sim_278.97_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp6")
sim_278.97_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp7")
sim_278.97_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp8")
sim_278.97_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp9")
sim_278.97_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.97_p08_m007_e033_100spp10")

sim_278.98_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp1")
sim_278.98_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp2")
sim_278.98_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp3")
sim_278.98_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp4")
sim_278.98_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp5")
sim_278.98_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp6")
sim_278.98_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp7")
sim_278.98_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp8")
sim_278.98_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp9")
sim_278.98_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.98_p08_m007_e033_100spp10")

sim_278.99_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp1")
sim_278.99_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp2")
sim_278.99_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp3")
sim_278.99_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp4")
sim_278.99_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp5")
sim_278.99_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp6")
sim_278.99_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp7")
sim_278.99_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp8")
sim_278.99_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp9")
sim_278.99_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/278.99_p08_m007_e033_100spp10")

sim_279_100spp1 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp1")
sim_279_100spp2 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp2")
sim_279_100spp3 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp3")
sim_279_100spp4 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp4")
sim_279_100spp5 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp5")
sim_279_100spp6 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp6")
sim_279_100spp7 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp7")
sim_279_100spp8 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp8")
sim_279_100spp9 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp9")
sim_279_100spp10 <- read.csv("03_Output/simulacion_1/100spp2/279_p08_m007_e033_100spp10")














