# CICLO PARA GRAFICAS 
maximum_growth_rate<-function(p,temperature,energy){
  # Energy in electronVolts
  a <- 1.7e5
  kb<-1.380649e-23
  energy_ev <- ev_to_joules(energy)
  rna_copy_number<-rgeom(1,p) + 1
  return(a*rna_copy_number*exp(-energy_ev/(kb*temperature)))
}
# para la tasa de crecimiento 

interaction_matrix<-function(n_species){
  media<-runif(1,min=0.1,max=1)
  m<-rnorm(n_species*n_species, media, media/2)
  m<-matrix(m, nrow=n_species)
}
#Para la matriz

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
  
  for (x in 1:length(parmtros)){
  for (f in 1:length(iniciales)){
    incs <- as.numeric(unlist ( iniciales[[f]] ) )
    
    rst1<- ode(incs, tiempo, lotka_volterra, parmtros[[x]])
    rst_df <- as.data.frame(rst1)
     
    matplot(rst_df$time, rst_df[, -1], type = "l", lty = 1, col = 1:numero_species,
            xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                  numero_species, "Species", "(",
                                                                  temperatura[x], ")"))
    
    write.csv(rst_df, file = paste0(directorio, temperatura[x], nombre, f)) 
    
    for (i in 1:(length(matriz)*length(parmtros))){
      return(assign(paste('rst_df',i,sep=''), rst_df))
    }
    
  }
  }
}


 # intentandolo todo 

# Parametros 
number_species <- 20
p<-0.8
tempss<-278
energiact<-0.33
muert<- runif(number_species,min=0.03,max=0.2)
matriz20 <- mz20[, -1]
times <- seq(0, 1000, by = 0.1)
directorio20 <- "03_Output/simulacion_p08_ev033_muerte007_RYP//1_matrices_para_simulaciones/"
nombre20 <- "_p08_m007_e033_7spp"

condiciones20sim <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 20)
condiciones20sim
sims20 <- simulaciones(numero_species= number_species, iniciales = condiciones20sim, pvalor = p, 
                       temps = tempss, energia = energiact, morte = muert, matriz = matriz20, 
                       tiempo= times, sims= 20, directorio = directorio20, nombre = nombre20)

# ERROR in alpha %*% N requires numeric/complex matrix/vector arguments
