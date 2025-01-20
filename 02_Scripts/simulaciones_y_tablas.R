# MATRICES PARA TRABAJAR DATOS 
mz7 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/1_matrices_para_simulaciones/matriz_7spp")
mz7 <- as.matrix(mz7)

mz20 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/1_matrices_para_simulaciones/matriz_20spp")
mz20 <- as.matrix(mz20)

mz50 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/1_matrices_para_simulaciones/matriz_50spp")
mz7 <- as.matrix(mz50)

mz100 <- read.csv("03_Output/simulacion_p08_ev033_muerte007/1_matrices_para_simulaciones/matriz_100spp")
mz7 <- as.matrix(mz100)



# PARAMETROS POR TEMPERATURA (INCLUYEN LOS VALORES DE R)
parameters278 <- read.csv(parameters278, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters278")

parameters279 <- read.csv(parameters279, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters279")

parameters280 <- read.csv(parameters280, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters280")

parameters281 <- read.csv(parameters281, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters281")

parameters282 <- read.csv(parameters282, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters282")

parameters283 <- read.csv(parameters283, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters283")

parameters284 <- read.csv(parameters284, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters284")

parameters285 <- read.csv(parameters285, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters285")

parameters286 <- read.csv(parameters286, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters286")

parameters287 <- read.csv(parameters287, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters287")

parameters288 <- read.csv(parameters288, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters288")

parameters289 <- read.csv(parameters289, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters289")

parameters290 <- read.csv(parameters290, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters290")

parameters291 <- read.csv(parameters291, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters291")

parameters292 <- read.csv(parameters292, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters292")

parameters293 <- read.csv(parameters293, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters293")

parameters294 <- read.csv(parameters294, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters294")

parameters295 <- read.csv(parameters295, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters295")

parameters296 <- read.csv(parameters296, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters296")

parameters297 <- read.csv(parameters297, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters297")

parameters298 <- read.csv(parameters298, "03_Output/simulacion_p08_ev033_muerte007/2_parametros_por_temperatura/parameters298")


############################################################################################################
############################################################################################################
############################################ INTENTO CICLO #################################################

# FUNCION QUE CREA VECTORES DE CONDICIONES INCIALES
condiciones_iniciales <- function (nsimulaciones, nspecies){
  initial_states <- list()
  
  for (i in 1:length(nsimulaciones)) {
    initial_states[[i]] <- runif(nspecies, min=1, max=100)
    names(initial_states)[i] = paste0("initial_state",i)
  }
  return(initial_states)
  
}
# NOTA: simulaciones tiene que ser un integrer, para que pueda contabilizarlo 
# como mas de uno 

a <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 20)
a

class(a)
# FUNCION QUE CREA LISTAS DE PARAMETROS SEGUN LA TEMPERATURA 
parametros <- function(temperaturas, nspecies, p, energy, alpha, muerte){
  
  # Generar vectores con los valores de R respectivos 
  ltrv <- (vector("list", length(temperaturas)))
  for (a in 1:length(temperaturas)){
    ltrv[[a]] <-rep(0, nspecies)  
    
    for ( i in 1:nspecies){
      ltrv[[a]][i] <- maximum_growth_rate(p,temperaturas[a],energy)
      
    }
  }
  
  
  # Generar listas de parametros en base a los vectores realizados 
  
  parameters <- list()
  for (i in 1:length(temperaturas)){
    
    parameters[[i]] <- list(r =ltrv[[i]] , alpha = alpha, muerte = muerte)
  }
  
  return(parameters)
}

prub <- parametros(temperaturas = 278:282, nspecies = 20, p = 0.8, energy = 0.33, alpha = mz20[,-1], muerte = 0.07)
pms <- parametros(temperaturas = 278:279, nspecies = 7, p = 0.8, energy = 0.33, alpha = mz7[,-1], muerte = 0.07)
pms



View(mz7)

# FUNCION PARA HACER LAS SIMULACIONES 
simulaciones <- function (numero_species, iniciales, pvalor, temps, energia, morte, matriz, tiempo, sims, directorio, nombre){
  

  # Generar parametros 
  parmtros <- parametros(temperaturas = temps, nspecies = numero_species, p = pvalor, energy = energia, alpha = matriz, 
                         muerte = morte)
  # obtengo mis listas de parametros con los valores de R, MATRIZ Y MUERTE 
  
  
  n <- length(prub)*length(a)
  rst1 <- list()
  rst_df <- list()
  
  for (x in 1:length(prub)){
    for (f in 1:length(a)){
      incs <- as.numeric(unlist ( a[[f]] ) )
      
      for (i in 1:n){
        rst1[[i]] <- ode(incs, tiempo, lotka_volterra, prub[[x]])
        rst_df[[i]] <- as.data.frame(rst1[[i]])
      }
    }
  }
  
 return(rst_df)
  
}







for (i in 1:length(result_df)){
  
  write.csv(result_df[[i]], file = paste0(directorio, nombre, i))
  
}



################
 # intentandolo todo 

# Parametros 
number_species <- 20
p<-0.8
tempss<-278
energiact<-0.33
muert<- runif(number_species,min=0.03,max=0.2)
matriz20 <- mz20[, -1]
times <- seq(0, 1000, by = 0.1)
directorio20 <- "03_Output/simulacion_p08_ev033_muerte007/1_matrices_para_simulaciones/"
nombre20 <- "pepe"

condiciones20sim <- condiciones_iniciales(nsimulaciones = 1:20, nspecies = 20)
sims20 <- simulaciones(numero_species= number_species, iniciales = condiciones20sim, pvalor = p, 
                       temps = tempss, energia = energiact, morte = muert, matriz = matriz20, 
                       tiempo= times, sims= 20, directorio = directorio20, nombre = nombre20)
length(sims20)
