# Cargar objetos y calcular los ultimos valores de las columnas 

matplot(result_df$time, result_df[, -c(1,2)], type = "l", lty = 1, col = 1:number_species,
        xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                              number_species, "Species"))
# Para visualizar cualquiera de las tablas 

#### FUNCION PARA CALCULAR LA TABLA DE VALORES ####
valz <- function (resultados){
  valores <- c()
  matriz <- data.frame()
  
  for (i in 1:length(resultados)){
    matriz <- as.data.frame(resultados[[i]])
    # para que cada una de las matrices dentro de la lista 
    # se convierta en un data.frame 
    
    nspp <- ncol(matriz)
    
    matriz[is.na(matriz)] <- 0
    # Ahora todos los valores que antes eran NA son 0 
    # asi evito que me seleccione los valores que son NA 
    
    for (k in 1:ncol(matriz)){
      y <- tail(matriz[k], n = 1)
      valores <- append(valores, y)
    }
  }
  restv <- matrix(valores, nrow = nspp, byrow = T)
  return(restv)
}


#### Resultados ####
# Cada uno de los siguientes apartados cuenta con 4 movimientos dentro de la base de datos 
# 1. Cargar las matrices de solucion despues de cada una de las simulaciones 
# 2. Creación de una lista con cada una de las matrices correspondientes a cada simulacion 
# 3. Eliminar primeras dos filas de cada uno de los objetos dentro de la lista 
# 4. Aplicar funcion valz para determinar valores de abundancia para cada simulacion



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
sim_278_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp1")
sim_278_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp2")
sim_278_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp3")
sim_278_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp4")
sim_278_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp5")
sim_278_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp6")
sim_278_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp7")
sim_278_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp8")
sim_278_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp9")
sim_278_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/50spp/278_p08_m007_e033_50spp10")

resultados50spp278 <- list(sim_278_50spp1, sim_278_50spp2, sim_278_50spp3, sim_278_50spp4,
                          sim_278_50spp5, sim_278_50spp6, sim_278_50spp7, sim_278_50spp8, 
                          sim_278_50spp9, sim_278_50spp10)
matrices50spp278 <- lapply(resultados50spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla278_50spp <- valz(matrices50spp278)

##### 50 spps 279 ####
sim_279_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp1")
sim_279_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp2")
sim_279_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp3")
sim_279_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp4")
sim_279_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp5")
sim_279_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp6")
sim_279_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp7")
sim_279_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp8")
sim_279_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp9")
sim_279_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/50spp/279_p08_m007_e033_50spp10")

resultados50spp279 <- list(sim_279_50spp1, sim_279_50spp2, sim_279_50spp3, sim_279_50spp4,
                          sim_279_50spp5, sim_279_50spp6, sim_279_50spp7, sim_279_50spp8, 
                          sim_279_50spp9, sim_279_50spp10)
matrices50spp279 <- lapply(resultados50spp279,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla279_50spp <- valz(matrices50spp279)


##### 50 spps 280 ####
sim_280_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp1")
sim_280_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp2")
sim_280_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp3")
sim_280_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp4")
sim_280_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp5")
sim_280_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp6")
sim_280_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp7")
sim_280_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp8")
sim_280_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp9")
sim_280_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/50spp/280_p08_m007_e033_50spp10")

resultados50spp280 <- list(sim_280_50spp1, sim_280_50spp2, sim_280_50spp3, sim_280_50spp4,
                          sim_280_50spp5, sim_280_50spp6, sim_280_50spp7, sim_280_50spp8, 
                          sim_280_50spp9, sim_280_50spp10)
matrices50spp280 <- lapply(resultados50spp280,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla280_50spp <- valz(matrices50spp280)


##### 50 spps 281 ####
sim_281_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp1")
sim_281_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp2")
sim_281_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp3")
sim_281_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp4")
sim_281_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp5")
sim_281_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp6")
sim_281_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp7")
sim_281_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp8")
sim_281_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp9")
sim_281_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/50spp/281_p08_m007_e033_50spp10")

resultados50spp281 <- list(sim_281_50spp1, sim_281_50spp2, sim_281_50spp3, sim_281_50spp4,
                          sim_281_50spp5, sim_281_50spp6, sim_281_50spp7, sim_281_50spp8, 
                          sim_281_50spp9, sim_281_50spp10)
matrices50spp281 <- lapply(resultados50spp281,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla281_50spp <- valz(matrices50spp281)


##### 50 spps 282 ####
sim_282_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp1")
sim_282_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp2")
sim_282_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp3")
sim_282_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp4")
sim_282_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp5")
sim_282_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp6")
sim_282_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp7")
sim_282_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp8")
sim_282_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp9")
sim_282_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/50spp/282_p08_m007_e033_50spp10")

resultados50spp282 <- list(sim_282_50spp1, sim_282_50spp2, sim_282_50spp3, sim_282_50spp4,
                          sim_282_50spp5, sim_282_50spp6, sim_282_50spp7, sim_282_50spp8, 
                          sim_282_50spp9, sim_282_50spp10)
matrices50spp282 <- lapply(resultados50spp282,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla282_50spp <- valz(matrices50spp282)


##### 50 spps 283 ####
sim_283_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp1")
sim_283_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp2")
sim_283_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp3")
sim_283_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp4")
sim_283_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp5")
sim_283_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp6")
sim_283_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp7")
sim_283_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp8")
sim_283_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp9")
sim_283_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/50spp/283_p08_m007_e033_50spp10")

resultados50spp283 <- list(sim_283_50spp1, sim_283_50spp2, sim_283_50spp3, sim_283_50spp4,
                          sim_283_50spp5, sim_283_50spp6, sim_283_50spp7, sim_283_50spp8, 
                          sim_283_50spp9, sim_283_50spp10)
matrices50spp283 <- lapply(resultados50spp283,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla283_50spp <- valz(matrices50spp283)


##### 50 spps 284 ####
sim_284_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp1")
sim_284_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp2")
sim_284_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp3")
sim_284_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp4")
sim_284_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp5")
sim_284_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp6")
sim_284_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp7")
sim_284_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp8")
sim_284_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp9")
sim_284_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/50spp/284_p08_m007_e033_50spp10")

resultados50spp284 <- list(sim_284_50spp1, sim_284_50spp2, sim_284_50spp3, sim_284_50spp4,
                          sim_284_50spp5, sim_284_50spp6, sim_284_50spp7, sim_284_50spp8, 
                          sim_284_50spp9, sim_284_50spp10)
matrices50spp284 <- lapply(resultados50spp284,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla284_50spp <- valz(matrices50spp284)


##### 50 spps 285 ####
sim_285_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp1")
sim_285_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp2")
sim_285_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp3")
sim_285_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp4")
sim_285_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp5")
sim_285_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp6")
sim_285_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp7")
sim_285_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp8")
sim_285_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp9")
sim_285_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/50spp/285_p08_m007_e033_50spp10")

resultados50spp285 <- list(sim_285_50spp1, sim_285_50spp2, sim_285_50spp3, sim_285_50spp4,
                          sim_285_50spp5, sim_285_50spp6, sim_285_50spp7, sim_285_50spp8, 
                          sim_285_50spp9, sim_285_50spp10)
matrices50spp285 <- lapply(resultados50spp285,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla285_50spp <- valz(matrices50spp285)


##### 50 spps 286 ####
sim_286_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp1")
sim_286_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp2")
sim_286_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp3")
sim_286_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp4")
sim_286_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp5")
sim_286_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp6")
sim_286_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp7")
sim_286_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp8")
sim_286_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp9")
sim_286_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/50spp/286_p08_m007_e033_50spp10")

resultados50spp286 <- list(sim_286_50spp1, sim_286_50spp2, sim_286_50spp3, sim_286_50spp4,
                          sim_286_50spp5, sim_286_50spp6, sim_286_50spp7, sim_286_50spp8, 
                          sim_286_50spp9, sim_286_50spp10)
matrices50spp286 <- lapply(resultados50spp286,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla286_50spp <- valz(matrices50spp286)


##### 50 spps 287 ####   
sim_287_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp1")
sim_287_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp2")
sim_287_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp3")
sim_287_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp4")
sim_287_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp5")
sim_287_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp6")
sim_287_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp7")
sim_287_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp8")
sim_287_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp9")
sim_287_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/50spp/287_p08_m007_e033_50spp10")

resultados50spp287 <- list(sim_287_50spp1, sim_287_50spp2, sim_287_50spp3, sim_287_50spp4,
                          sim_287_50spp5, sim_287_50spp6, sim_287_50spp7, sim_287_50spp8, 
                          sim_287_50spp9, sim_287_50spp10)
matrices50spp287 <- lapply(resultados50spp287,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla287_50spp <- valz(matrices50spp287)


##### 50 spps 288 ####
sim_288_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp1")
sim_288_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp2")
sim_288_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp3")
sim_288_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp4")
sim_288_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp5")
sim_288_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp6")
sim_288_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp7")
sim_288_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp8")
sim_288_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp9")
sim_288_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/50spp/288_p08_m007_e033_50spp10")

resultados50spp288 <- list(sim_288_50spp1, sim_288_50spp2, sim_288_50spp3, sim_288_50spp4,
                          sim_288_50spp5, sim_288_50spp6, sim_288_50spp7, sim_288_50spp8, 
                          sim_288_50spp9, sim_288_50spp10)
matrices50spp288 <- lapply(resultados50spp288,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla288_50spp <- valz(matrices50spp288)


##### 50 spps 289 ####
sim_289_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp1")
sim_289_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp2")
sim_289_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp3")
sim_289_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp4")
sim_289_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp5")
sim_289_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp6")
sim_289_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp7")
sim_289_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp8")
sim_289_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp9")
sim_289_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/50spp/289_p08_m007_e033_50spp10")

resultados50spp289 <- list(sim_289_50spp1, sim_289_50spp2, sim_289_50spp3, sim_289_50spp4,
                          sim_289_50spp5, sim_289_50spp6, sim_289_50spp7, sim_289_50spp8, 
                          sim_289_50spp9, sim_289_50spp10)
matrices50spp289 <- lapply(resultados50spp289,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla289_50spp <- valz(matrices50spp289)

##### 50 spps 290 ####
sim_290_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp1")
sim_290_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp2")
sim_290_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp3")
sim_290_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp4")
sim_290_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp5")
sim_290_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp6")
sim_290_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp7")
sim_290_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp8")
sim_290_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp9")
sim_290_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/50spp/290_p08_m007_e033_50spp10")

resultados50spp290 <- list(sim_290_50spp1, sim_290_50spp2, sim_290_50spp3, sim_290_50spp4,
                          sim_290_50spp5, sim_290_50spp6, sim_290_50spp7, sim_290_50spp8, 
                          sim_290_50spp9, sim_290_50spp10)
matrices50spp290 <- lapply(resultados50spp290,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla290_50spp <- valz(matrices50spp290)

##### 50 spps 291 ####
sim_291_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp1")
sim_291_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp2")
sim_291_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp3")
sim_291_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp4")
sim_291_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp5")
sim_291_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp6")
sim_291_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp7")
sim_291_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp8")
sim_291_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp9")
sim_291_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/50spp/291_p08_m007_e033_50spp10")

resultados50spp291 <- list(sim_291_50spp1, sim_291_50spp2, sim_291_50spp3, sim_291_50spp4,
                          sim_291_50spp5, sim_291_50spp6, sim_291_50spp7, sim_291_50spp8, 
                          sim_291_50spp9, sim_291_50spp10)
matrices50spp291 <- lapply(resultados50spp291,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla291_50spp <- valz(matrices50spp291)

##### 50 spps 292 ####
sim_292_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp1")
sim_292_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp2")
sim_292_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp3")
sim_292_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp4")
sim_292_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp5")
sim_292_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp6")
sim_292_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp7")
sim_292_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp8")
sim_292_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp9")
sim_292_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/50spp/292_p08_m007_e033_50spp10")

resultados50spp292 <- list(sim_292_50spp1, sim_292_50spp2, sim_292_50spp3, sim_292_50spp4,
                          sim_292_50spp5, sim_292_50spp6, sim_292_50spp7, sim_292_50spp8, 
                          sim_292_50spp9, sim_292_50spp10)
matrices50spp292 <- lapply(resultados50spp292,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla292_50spp <- valz(matrices50spp292)

##### 50 spps 293 ####
sim_293_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp1")
sim_293_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp2")
sim_293_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp3")
sim_293_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp4")
sim_293_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp5")
sim_293_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp6")
sim_293_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp7")
sim_293_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp8")
sim_293_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp9")
sim_293_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/50spp/293_p08_m007_e033_50spp10")

resultados50spp293 <- list(sim_293_50spp1, sim_293_50spp2, sim_293_50spp3, sim_293_50spp4,
                          sim_293_50spp5, sim_293_50spp6, sim_293_50spp7, sim_293_50spp8, 
                          sim_293_50spp9, sim_293_50spp10)
matrices50spp293 <- lapply(resultados50spp293,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla293_50spp <- valz(matrices50spp293)

##### 50 spps 294 ####
sim_294_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp1")
sim_294_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp2")
sim_294_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp3")
sim_294_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp4")
sim_294_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp5")
sim_294_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp6")
sim_294_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp7")
sim_294_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp8")
sim_294_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp9")
sim_294_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/50spp/294_p08_m007_e033_50spp10")

resultados50spp294 <- list(sim_294_50spp1, sim_294_50spp2, sim_294_50spp3, sim_294_50spp4,
                          sim_294_50spp5, sim_294_50spp6, sim_294_50spp7, sim_294_50spp8, 
                          sim_294_50spp9, sim_294_50spp10)
matrices50spp294 <- lapply(resultados50spp294,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla294_50spp <- valz(matrices50spp294)

##### 50 spps 295 ####
sim_295_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp1")
sim_295_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp2")
sim_295_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp3")
sim_295_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp4")
sim_295_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp5")
sim_295_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp6")
sim_295_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp7")
sim_295_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp8")
sim_295_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp9")
sim_295_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/50spp/295_p08_m007_e033_50spp10")

resultados50spp295 <- list(sim_295_50spp1, sim_295_50spp2, sim_295_50spp3, sim_295_50spp4,
                          sim_295_50spp5, sim_295_50spp6, sim_295_50spp7, sim_295_50spp8, 
                          sim_295_50spp9, sim_295_50spp10)
matrices50spp295 <- lapply(resultados50spp295,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla295_50spp <- valz(matrices50spp295)

##### 50 spps 296 ####
sim_296_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp1")
sim_296_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp2")
sim_296_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp3")
sim_296_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp4")
sim_296_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp5")
sim_296_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp6")
sim_296_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp7")
sim_296_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp8")
sim_296_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp9")
sim_296_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/50spp/296_p08_m007_e033_50spp10")

resultados50spp296 <- list(sim_296_50spp1, sim_296_50spp2, sim_296_50spp3, sim_296_50spp4,
                          sim_296_50spp5, sim_296_50spp6, sim_296_50spp7, sim_296_50spp8, 
                          sim_296_50spp9, sim_296_50spp10)
matrices50spp296 <- lapply(resultados50spp296,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla296_50spp <- valz(matrices50spp296)

##### 50 spps 297 ####
sim_297_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp1")
sim_297_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp2")
sim_297_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp3")
sim_297_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp4")
sim_297_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp5")
sim_297_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp6")
sim_297_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp7")
sim_297_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp8")
sim_297_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp9")
sim_297_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/50spp/297_p08_m007_e033_50spp10")

resultados50spp297 <- list(sim_297_50spp1, sim_297_50spp2, sim_297_50spp3, sim_297_50spp4,
                          sim_297_50spp5, sim_297_50spp6, sim_297_50spp7, sim_297_50spp8, 
                          sim_297_50spp9, sim_297_50spp10)
matrices50spp297 <- lapply(resultados50spp297,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla297_50spp <- valz(matrices50spp297)

##### 50 spps 298 ####
sim_298_50spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp1")
sim_298_50spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp2")
sim_298_50spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp3")
sim_298_50spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp4")
sim_298_50spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp5")
sim_298_50spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp6")
sim_298_50spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp7")
sim_298_50spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp8")
sim_298_50spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp9")
sim_298_50spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/50spp/298_p08_m007_e033_50spp10")

resultados50spp298 <- list(sim_298_50spp1, sim_298_50spp2, sim_298_50spp3, sim_298_50spp4,
                          sim_298_50spp5, sim_298_50spp6, sim_298_50spp7, sim_298_50spp8, 
                          sim_298_50spp9, sim_298_50spp10)
matrices50spp298 <- lapply(resultados50spp298,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla298_50spp <- valz(matrices50spp298)

                      
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
##########################################################################################################
                      
                      
                  
#### 100 spps ####
##### 100 spps 278 ####
sim_278_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp1")
sim_278_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp2")
sim_278_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp3")
sim_278_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp4")
sim_278_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp5")
sim_278_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp6")
sim_278_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp7")
sim_278_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp8")
sim_278_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp9")
sim_278_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/278/100spp/278_p08_m007_e033_100spp10")

resultados100spp278 <- list(sim_278_100spp1, sim_278_100spp2, sim_278_100spp3, sim_278_100spp4,
                          sim_278_100spp5, sim_278_100spp6, sim_278_100spp7, sim_278_100spp8, 
                          sim_278_100spp9, sim_278_100spp10)
matrices100spp278 <- lapply(resultados100spp278,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla278_100spp <- valz(matrices100spp278)

##### 100 spps 279 ####
sim_279_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp1")
sim_279_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp2")
sim_279_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp3")
sim_279_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp4")
sim_279_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp5")
sim_279_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp6")
sim_279_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp7")
sim_279_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp8")
sim_279_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp9")
sim_279_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/279/100spp/279_p08_m007_e033_100spp10")

resultados100spp279 <- list(sim_279_100spp1, sim_279_100spp2, sim_279_100spp3, sim_279_100spp4,
                          sim_279_100spp5, sim_279_100spp6, sim_279_100spp7, sim_279_100spp8, 
                          sim_279_100spp9, sim_279_100spp10)
matrices100spp279 <- lapply(resultados100spp279,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla279_100spp <- valz(matrices100spp279)


##### 100 spps 280 ####
sim_280_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp1")
sim_280_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp2")
sim_280_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp3")
sim_280_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp4")
sim_280_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp5")
sim_280_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp6")
sim_280_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp7")
sim_280_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp8")
sim_280_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp9")
sim_280_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/280/100spp/280_p08_m007_e033_100spp10")

resultados100spp280 <- list(sim_280_100spp1, sim_280_100spp2, sim_280_100spp3, sim_280_100spp4,
                          sim_280_100spp5, sim_280_100spp6, sim_280_100spp7, sim_280_100spp8, 
                          sim_280_100spp9, sim_280_100spp10)
matrices100spp280 <- lapply(resultados100spp280,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla280_100spp <- valz(matrices100spp280)


##### 100 spps 281 ####
sim_281_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp1")
sim_281_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp2")
sim_281_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp3")
sim_281_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp4")
sim_281_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp5")
sim_281_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp6")
sim_281_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp7")
sim_281_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp8")
sim_281_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp9")
sim_281_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/281/100spp/281_p08_m007_e033_100spp10")

resultados100spp281 <- list(sim_281_100spp1, sim_281_100spp2, sim_281_100spp3, sim_281_100spp4,
                          sim_281_100spp5, sim_281_100spp6, sim_281_100spp7, sim_281_100spp8, 
                          sim_281_100spp9, sim_281_100spp10)
matrices100spp281 <- lapply(resultados100spp281,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla281_100spp <- valz(matrices100spp281)


##### 100 spps 282 ####
sim_282_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp1")
sim_282_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp2")
sim_282_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp3")
sim_282_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp4")
sim_282_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp5")
sim_282_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp6")
sim_282_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp7")
sim_282_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp8")
sim_282_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp9")
sim_282_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/282/100spp/282_p08_m007_e033_100spp10")

resultados100spp282 <- list(sim_282_100spp1, sim_282_100spp2, sim_282_100spp3, sim_282_100spp4,
                          sim_282_100spp5, sim_282_100spp6, sim_282_100spp7, sim_282_100spp8, 
                          sim_282_100spp9, sim_282_100spp10)
matrices100spp282 <- lapply(resultados100spp282,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla282_100spp <- valz(matrices100spp282)


##### 100 spps 283 ####
sim_283_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp1")
sim_283_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp2")
sim_283_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp3")
sim_283_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp4")
sim_283_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp5")
sim_283_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp6")
sim_283_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp7")
sim_283_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp8")
sim_283_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp9")
sim_283_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/283/100spp/283_p08_m007_e033_100spp10")

resultados100spp283 <- list(sim_283_100spp1, sim_283_100spp2, sim_283_100spp3, sim_283_100spp4,
                          sim_283_100spp5, sim_283_100spp6, sim_283_100spp7, sim_283_100spp8, 
                          sim_283_100spp9, sim_283_100spp10)
matrices100spp283 <- lapply(resultados100spp283,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla283_100spp <- valz(matrices100spp283)


##### 100 spps 284 ####
sim_284_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp1")
sim_284_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp2")
sim_284_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp3")
sim_284_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp4")
sim_284_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp5")
sim_284_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp6")
sim_284_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp7")
sim_284_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp8")
sim_284_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp9")
sim_284_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/284/100spp/284_p08_m007_e033_100spp10")

resultados100spp284 <- list(sim_284_100spp1, sim_284_100spp2, sim_284_100spp3, sim_284_100spp4,
                          sim_284_100spp5, sim_284_100spp6, sim_284_100spp7, sim_284_100spp8, 
                          sim_284_100spp9, sim_284_100spp10)
matrices100spp284 <- lapply(resultados100spp284,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla284_100spp <- valz(matrices100spp284)


##### 100 spps 285 ####
sim_285_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp1")
sim_285_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp2")
sim_285_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp3")
sim_285_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp4")
sim_285_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp5")
sim_285_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp6")
sim_285_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp7")
sim_285_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp8")
sim_285_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp9")
sim_285_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/285/100spp/285_p08_m007_e033_100spp10")

resultados100spp285 <- list(sim_285_100spp1, sim_285_100spp2, sim_285_100spp3, sim_285_100spp4,
                          sim_285_100spp5, sim_285_100spp6, sim_285_100spp7, sim_285_100spp8, 
                          sim_285_100spp9, sim_285_100spp10)
matrices100spp285 <- lapply(resultados100spp285,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla285_100spp <- valz(matrices100spp285)


##### 100 spps 286 ####
sim_286_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp1")
sim_286_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp2")
sim_286_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp3")
sim_286_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp4")
sim_286_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp5")
sim_286_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp6")
sim_286_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp7")
sim_286_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp8")
sim_286_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp9")
sim_286_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/286/100spp/286_p08_m007_e033_100spp10")

resultados100spp286 <- list(sim_286_100spp1, sim_286_100spp2, sim_286_100spp3, sim_286_100spp4,
                          sim_286_100spp5, sim_286_100spp6, sim_286_100spp7, sim_286_100spp8, 
                          sim_286_100spp9, sim_286_100spp10)
matrices100spp286 <- lapply(resultados100spp286,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla286_100spp <- valz(matrices100spp286)


##### 100 spps 287 ####   
sim_287_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp1")
sim_287_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp2")
sim_287_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp3")
sim_287_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp4")
sim_287_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp5")
sim_287_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp6")
sim_287_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp7")
sim_287_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp8")
sim_287_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp9")
sim_287_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/287/100spp/287_p08_m007_e033_100spp10")

resultados100spp287 <- list(sim_287_100spp1, sim_287_100spp2, sim_287_100spp3, sim_287_100spp4,
                          sim_287_100spp5, sim_287_100spp6, sim_287_100spp7, sim_287_100spp8, 
                          sim_287_100spp9, sim_287_100spp10)
matrices100spp287 <- lapply(resultados100spp287,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla287_100spp <- valz(matrices100spp287)


##### 100 spps 288 ####
sim_288_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp1")
sim_288_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp2")
sim_288_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp3")
sim_288_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp4")
sim_288_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp5")
sim_288_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp6")
sim_288_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp7")
sim_288_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp8")
sim_288_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp9")
sim_288_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/288/100spp/288_p08_m007_e033_100spp10")

resultados100spp288 <- list(sim_288_100spp1, sim_288_100spp2, sim_288_100spp3, sim_288_100spp4,
                          sim_288_100spp5, sim_288_100spp6, sim_288_100spp7, sim_288_100spp8, 
                          sim_288_100spp9, sim_288_100spp10)
matrices100spp288 <- lapply(resultados100spp288,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla288_100spp <- valz(matrices100spp288)


##### 100 spps 289 ####
sim_289_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp1")
sim_289_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp2")
sim_289_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp3")
sim_289_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp4")
sim_289_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp5")
sim_289_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp6")
sim_289_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp7")
sim_289_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp8")
sim_289_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp9")
sim_289_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/289/100spp/289_p08_m007_e033_100spp10")

resultados100spp289 <- list(sim_289_100spp1, sim_289_100spp2, sim_289_100spp3, sim_289_100spp4,
                          sim_289_100spp5, sim_289_100spp6, sim_289_100spp7, sim_289_100spp8, 
                          sim_289_100spp9, sim_289_100spp10)
matrices100spp289 <- lapply(resultados100spp289,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla289_100spp <- valz(matrices100spp289)

##### 100 spps 290 ####
sim_290_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp1")
sim_290_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp2")
sim_290_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp3")
sim_290_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp4")
sim_290_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp5")
sim_290_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp6")
sim_290_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp7")
sim_290_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp8")
sim_290_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp9")
sim_290_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/290/100spp/290_p08_m007_e033_100spp10")

resultados100spp290 <- list(sim_290_100spp1, sim_290_100spp2, sim_290_100spp3, sim_290_100spp4,
                          sim_290_100spp5, sim_290_100spp6, sim_290_100spp7, sim_290_100spp8, 
                          sim_290_100spp9, sim_290_100spp10)
matrices100spp290 <- lapply(resultados100spp290,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla290_100spp <- valz(matrices100spp290)

##### 100 spps 291 ####
sim_291_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp1")
sim_291_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp2")
sim_291_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp3")
sim_291_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp4")
sim_291_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp5")
sim_291_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp6")
sim_291_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp7")
sim_291_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp8")
sim_291_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp9")
sim_291_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/291/100spp/291_p08_m007_e033_100spp10")

resultados100spp291 <- list(sim_291_100spp1, sim_291_100spp2, sim_291_100spp3, sim_291_100spp4,
                          sim_291_100spp5, sim_291_100spp6, sim_291_100spp7, sim_291_100spp8, 
                          sim_291_100spp9, sim_291_100spp10)
matrices100spp291 <- lapply(resultados100spp291,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla291_100spp <- valz(matrices100spp291)

##### 100 spps 292 ####
sim_292_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp1")
sim_292_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp2")
sim_292_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp3")
sim_292_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp4")
sim_292_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp5")
sim_292_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp6")
sim_292_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp7")
sim_292_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp8")
sim_292_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp9")
sim_292_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/292/100spp/292_p08_m007_e033_100spp10")

resultados100spp292 <- list(sim_292_100spp1, sim_292_100spp2, sim_292_100spp3, sim_292_100spp4,
                          sim_292_100spp5, sim_292_100spp6, sim_292_100spp7, sim_292_100spp8, 
                          sim_292_100spp9, sim_292_100spp10)
matrices100spp292 <- lapply(resultados100spp292,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla292_100spp <- valz(matrices100spp292)

##### 100 spps 293 ####
sim_293_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp1")
sim_293_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp2")
sim_293_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp3")
sim_293_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp4")
sim_293_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp5")
sim_293_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp6")
sim_293_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp7")
sim_293_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp8")
sim_293_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp9")
sim_293_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/293/100spp/293_p08_m007_e033_100spp10")

resultados100spp293 <- list(sim_293_100spp1, sim_293_100spp2, sim_293_100spp3, sim_293_100spp4,
                          sim_293_100spp5, sim_293_100spp6, sim_293_100spp7, sim_293_100spp8, 
                          sim_293_100spp9, sim_293_100spp10)
matrices100spp293 <- lapply(resultados100spp293,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla293_100spp <- valz(matrices100spp293)

##### 100 spps 294 ####
sim_294_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp1")
sim_294_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp2")
sim_294_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp3")
sim_294_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp4")
sim_294_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp5")
sim_294_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp6")
sim_294_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp7")
sim_294_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp8")
sim_294_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp9")
sim_294_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/294/100spp/294_p08_m007_e033_100spp10")

resultados100spp294 <- list(sim_294_100spp1, sim_294_100spp2, sim_294_100spp3, sim_294_100spp4,
                          sim_294_100spp5, sim_294_100spp6, sim_294_100spp7, sim_294_100spp8, 
                          sim_294_100spp9, sim_294_100spp10)
matrices100spp294 <- lapply(resultados100spp294,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla294_100spp <- valz(matrices100spp294)

##### 100 spps 295 ####
sim_295_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp1")
sim_295_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp2")
sim_295_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp3")
sim_295_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp4")
sim_295_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp5")
sim_295_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp6")
sim_295_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp7")
sim_295_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp8")
sim_295_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp9")
sim_295_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/295/100spp/295_p08_m007_e033_100spp10")

resultados100spp295 <- list(sim_295_100spp1, sim_295_100spp2, sim_295_100spp3, sim_295_100spp4,
                          sim_295_100spp5, sim_295_100spp6, sim_295_100spp7, sim_295_100spp8, 
                          sim_295_100spp9, sim_295_100spp10)
matrices100spp295 <- lapply(resultados100spp295,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla295_100spp <- valz(matrices100spp295)

##### 100 spps 296 ####
sim_296_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp1")
sim_296_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp2")
sim_296_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp3")
sim_296_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp4")
sim_296_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp5")
sim_296_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp6")
sim_296_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp7")
sim_296_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp8")
sim_296_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp9")
sim_296_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/296/100spp/296_p08_m007_e033_100spp10")

resultados100spp296 <- list(sim_296_100spp1, sim_296_100spp2, sim_296_100spp3, sim_296_100spp4,
                          sim_296_100spp5, sim_296_100spp6, sim_296_100spp7, sim_296_100spp8, 
                          sim_296_100spp9, sim_296_100spp10)
matrices100spp296 <- lapply(resultados100spp296,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla296_100spp <- valz(matrices100spp296)

##### 100 spps 297 ####
sim_297_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp1")
sim_297_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp2")
sim_297_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp3")
sim_297_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp4")
sim_297_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp5")
sim_297_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp6")
sim_297_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp7")
sim_297_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp8")
sim_297_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp9")
sim_297_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/297/100spp/297_p08_m007_e033_100spp10")

resultados100spp297 <- list(sim_297_100spp1, sim_297_100spp2, sim_297_100spp3, sim_297_100spp4,
                          sim_297_100spp5, sim_297_100spp6, sim_297_100spp7, sim_297_100spp8, 
                          sim_297_100spp9, sim_297_100spp10)
matrices100spp297 <- lapply(resultados100spp297,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla297_100spp <- valz(matrices100spp297)

##### 100 spps 298 ####
sim_298_100spp1 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp1")
sim_298_100spp2 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp2")
sim_298_100spp3 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp3")
sim_298_100spp4 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp4")
sim_298_100spp5 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp5")
sim_298_100spp6 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp6")
sim_298_100spp7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp7")
sim_298_100spp8 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp8")
sim_298_100spp9 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp9")
sim_298_100spp10 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/298/100spp/298_p08_m007_e033_100spp10")

resultados100spp298 <- list(sim_298_100spp1, sim_298_100spp2, sim_298_100spp3, sim_298_100spp4,
                          sim_298_100spp5, sim_298_100spp6, sim_298_100spp7, sim_298_100spp8, 
                          sim_298_100spp9, sim_298_100spp10)
matrices100spp298 <- lapply(resultados100spp298,  function(x) x[setdiff(names(x), c("X", "time"))])

tabla298_100spp <- valz(matrices100spp298)


