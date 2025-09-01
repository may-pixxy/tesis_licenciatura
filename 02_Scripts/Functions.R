ev_to_joules <- function(ev) {
  # Conversion factor: 1 eV = 1.602176634e-19 Joules
  joules <- ev * 1.602176634e-19
  return(joules)
}


maximum_growth_rate<-function(p,temperature,energy){
  # Energy in electronVolts
  a <- 1.7e5
  kb<-1.380649e-23
  energy_ev <- ev_to_joules(energy)
  rna_copy_number<-rgeom(1,p) + 1
  return(a*rna_copy_number*exp(-energy_ev/(kb*temperature)))
}


interaction_matrix<-function(n_species){
  media<-runif(1,min=0.1,max=1)
   m<-rnorm(n_species*n_species, media, media/2)
   m<-matrix(m, nrow=n_species)
 }

 
# Function to define the system of ODEs (Lotka-Volterra model)
lotka_volterra <- function(t, state, parameters) {
   # Extract state variables (population sizes of the species)
   N <- state
   
   # Extract parameters: growth rates and interaction matrix
   r <- parameters$r      # Growth rates
   alpha <- parameters$alpha  # Interaction coefficients matrix
   muerte<-parameters$muerte
   # Define the system of differential equations for each species
   dN_dt <- r * N *(1 - (alpha %*% N) - muerte)# Lotka-Volterra interaction terms
   
   # Return the rate of change for each species
   list(dN_dt)
 }
 
# FUNCION QUE CREA VECTORES DE CONDICIONES INCIALES
condiciones_iniciales <- function (nsimulaciones, nspecies){
  initial_states <- list()
  
  for (i in 1:length(nsimulaciones)) {
    initial_states[[i]] <- runif(nspecies, min=1, max=50)
    names(initial_states)[i] = paste0("initial_state",i)
  }
  return(initial_states)
  
}
# NOTA: simulaciones tiene que ser un integrer, para que pueda contabilizarlo 
# como mas de uno 

# FUNCION QUE CREA LISTAS DE PARAMETROS SEGUN LA TEMPERATURA 
parametros <- function(temperaturas, nspecies, p, energy, alpha, muerte, filedrc , nombre){
  
  # Generar vectores con los valores de R respectivos 
  ltrv <- (vector("list", length(temperaturas)))
  for (a in 1:length(temperaturas)){
    ltrv[[a]] <-rep(0, nspecies)  
    
    for ( i in 1:nspecies){
      ltrv[[a]][i] <- maximum_growth_rate(p,temperaturas[a],energy)
      
    }
  }
  write.csv(ltrv, file = paste0(filedrc, "valores_r"))
  
  # Generar listas de parametros en base a los vectores realizados 
  
  parameters <- list()
  for (i in 1:length(temperaturas)){
    
    parameters[[i]] <- list(r =ltrv[[i]] , alpha = alpha, muerte = muerte)
  }
  write.csv(ltrv, file = paste0(filedrc, "parametros"))
  return(parameters)
}

# FUNCION PARA HACER LAS SIMULACIONES 
simulaciones <- function (numero_species, iniciales, pvalor, temps, energia, morte, matriz, tiempo, directorio, nombre){
  
  
  # Generar parametros 
  parmtros <- parametros(temperaturas = temps, nspecies = numero_species, p = pvalor, energy = energia, alpha = matriz, 
                         muerte = morte, filedrc = directorio )
  # obtengo mis listas de parametros con los valores de R, MATRIZ Y MUERTE 
  
  for (x in 1:length(parmtros)){
    for (f in 1:length(iniciales)){
      incs <- as.numeric(unlist ( iniciales[[f]] ) )
      
      rst1<- ode(incs, tiempo, lotka_volterra, parmtros[[x]])
      rst_df <- as.data.frame(rst1)
      
      matplot(rst_df$time, rst_df[, -1], type = "l", lty = 1, col = 1:numero_species,
              xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                    numero_species, "Species", "(",
                                                                    temps[x], ")"))
      
      write.csv(rst_df, file = paste0(directorio, temps[x], nombre, f)) 
      
    }
  }
}


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
 
 
 
 # network ctrc
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
 
 change_to_zero <- function (tabla){
   tabla[tabla <= 1e-6] <- 0
   tabla <- as.data.frame(tabla)
   tabla <- sapply(tabla, as.numeric)
   
   resultados_tabla <- t(tabla)
   return(resultados_tabla)
 }
 
 ### MODELO CON PH Y FUNCIONES ADAṔTADAS ###
 phvalz <- function(nspp){
   m <-runif(nspp, min = 5.5, max = 9.0)
   # ph optimo 
   
   n <- c()
   o <- c()
   for (i in 1:length(m)){
     x <- m[i] + 0.9
     y <- m[i] - 0.9
     
     n <- append(n, x)
     o <- append(o, y)
   }
   
   valores_ph <- list(pHo = m, phMin = o, phMax = n)
   return(valores_ph)
 }
 
 forms_ph <- function(phvalores, temperature){
   pHo = phvalores$pHo
   phMin = phvalores$phMin
   phMax = phvalores$phMax
   pH = 8.1-0.017*(temperature-288)
   
   pvz <- c()
   for (i in 1:length(pHo)){
     lvz <- ((pH-pHo[i])^2)/((pHo[i] -phMin[i])*(phMax[i]-pHo[i])) 
     pvz <- append(pvz, lvz)
   }
   
   return(pvz)
 }
 
 maximum_growth_rate_ph<-function(p,temperature,energy, calculo_ph){
   # Energy in electronVolts
   a <- 1.7e5
   kb<-1.380649e-23
   energy_ev <- ev_to_joules(energy)
   rna_copy_number<-rgeom(1,p) + 1
   
   f <- c()
   for (i in 1:length(calculo_ph)){
     x <-(a*rna_copy_number*exp(-energy_ev/(kb*temperature)))*(calculo_ph)
     f <- append(f,x)
   }
   return(f)
 }
 
 lotka_volterra_ph <- function(t, state, parameters) {
   # Extract state variables (population sizes of the species)
   N <- state
   
   # Extract parameters: growth rates and interaction matrix
   r <- parameters$r      # Growth rates
   alpha <- parameters$alpha  # Interaction coefficients matrix
   muerte<-parameters$muerte
   ph <- parameters$ph
   # Define the system of differential equations for each species
   dN_dt <- r * N *(1 - (alpha %*% N) - muerte - muerte*ph)# Lotka-Volterra interaction terms
   
   # Return the rate of change for each species
   list(dN_dt)
 }
 
 parametros_conph <- function(temperaturas, nspecies, p, energy, alpha, muerte, filedrc , valores_ph_completos){
   
   # Determinar valores de pH para la formula 
   valzph <- list()
   for(f in 1:length(temperaturas)){
     valzph[[f]] <- forms_ph( valores_ph_completos, temperature = temperaturas[f])
   }
   write.csv(valzph, file = paste0(filedrc, "valores_calculo_ph"))
   
   
   # Generar vectores con los valores de R respectivos 
   ltrv <- (vector("list", length(temperaturas)))
   for (a in 1:length(temperaturas)){
     ltrv[[a]] <-rep(0, nspecies)  
     
     for ( i in 1:nspecies){
       ltrv[[a]][i] <- maximum_growth_rate_ph(p,temperaturas[a],energy, valzph[[a]][i])
       
     }
   }
   write.csv(ltrv, file = paste0(filedrc, "valores_r"))
   
   # Generar listas de parametros en base a los vectores realizados 
   
   parameters <- list()
   for (i in 1:length(temperaturas)){
     
     parameters[[i]] <- list(r =ltrv[[i]] , alpha = alpha, muerte = muerte, ph =  valzph[[i]] )
   }
   write.csv(parameters, file = paste0(filedrc, "parametros"))
   return(parameters)
 }
 
 
 simulaciones_conph <- function (numero_species, iniciales, pvalor, temps, energia, morte, matriz, tiempo, directorio, nombre, valores_de_ph){
   
   
   # Generar parametros 
   parmtros <- parametros_conph(temperaturas = temps, nspecies = numero_species, p = pvalor, energy = energia, alpha = matriz, 
                                muerte = morte, filedrc = directorio, valores_ph_completos = valores_de_ph)
   # obtengo mis listas de parametros con los valores de R, MATRIZ Y MUERTE 
   
   for (x in 1:length(parmtros)){
     for (f in 1:length(iniciales)){
       incs <- as.numeric(unlist ( iniciales[[f]] ) )
       
       rst1<- ode(incs, tiempo, lotka_volterra_ph, parmtros[[x]])
       rst_df <- as.data.frame(rst1)
       
       matplot(rst_df$time, rst_df[, -1], type = "l", lty = 1, col = 1:numero_species,
               xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
                                                                     numero_species, "Species", "(",
                                                                     temps[x], ")"))
       
       write.csv(rst_df, file = paste0(directorio, temps[x], nombre, f)) 
       
     }
   }
 }
 
 
 