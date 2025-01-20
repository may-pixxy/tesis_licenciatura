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

a <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 20)


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
