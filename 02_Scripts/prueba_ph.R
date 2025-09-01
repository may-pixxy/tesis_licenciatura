####################################################################################################
# ph modelo 
# ph oceano de 8.1 https://www.iaea.org/es/newscenter/news/acidificacion-oceanos-deficinicion
# (https://derangedphysiology.com/main/cicm-primary-exam/acid-base-physiology/Chapter-114/neutrality-and-influence-temperature-and-pressure-ph)

a*rna_copy_number*exp(-energy_ev/(kb*temperature) - ((pH-pHo)^2)/((pHo -phMin)*(phMax-pHo)) )

# https://www.scielo.org.mx/scielo.php?pid=S0185-38802003000400012&script=sci_arttext (0.02 variacion del ph oceanico)
# El pH medio de las aguas superficiales varía entre 7,9 y 8,3 en el océano abierto, por lo que el océano permanece alcalino (pH > 7) 
# incluso después de estas disminuciones. A modo de comparación, el pH fue superior en 0,1 unidades durante las glaciaciones, y no hay }
# evidencia de valores de pH más de 0,6 unidades por debajo del pH preindustrial durante los últimos 300 millones de años 

8.1-0.02*(307-288) # ph va de 7.72 a 8.3

# El pH de la superficie en mar abierto ha disminuido en un rango muy probable de 0,017 a 0,027 unidades de pH por decenio desde finales de la década de 1980
# https://www.ipcc.ch/site/assets/uploads/sites/3/2020/07/SROCC_SPM_es.pdf
8.1-0.017*(278-288) # ph va de 7.77 a 8.27
8.1-0.027*(278-288) # ph va de 7.587 a 8.37


# Se prevé que el pH de la superficie en mar abierto se reducirá en alrededor de 0,3 unidades de pH en el período 2081-2100
8.1-0.3*(278-288) # ph de 2.6 a 11.3 (pero eso si aun hay temperaturas de 4°C) (pero la ipcc dice que para estos años se va a aumentar la temp del oceano hasta 2°C)



##############################
# 1. creacion de los 3 vectores 

# La mayoría de las bacterias no extremófilas crecen en un amplio rango de valores de pH externo, de 5,5 a 9,0
# https://pmc-ncbi-nlm-nih-gov.translate.goog/articles/PMC3072713/?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc#R23 


# funcion para valores de ph 
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

valoresprueba <- phvalz(100)
valoresprueba
# ya tengo mis tres vectores, ahora lo agrego a la funcion de r que tengo 
## FUNCIONA 


# Valores de ph para la formula 
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

vph <- forms_ph(valoresprueba, temperature = 278)

# estos valores estan bien 
## FUNCIONA


## FUNCIONES ADAPTADAS A MODELO CON Ph
maximum_growth_rate_ph<-function(p,temperature,energy, calculo_ph){
  # Energy in electronVolts
  a <- 1.7e5
  kb<-1.380649e-23
  energy_ev <- ev_to_joules(energy)
  rna_copy_number<-rgeom(1,p) + 1
  
  f <- c()
  for (i in 1:length(calculo_ph)){
    x <-a*rna_copy_number*exp(-energy_ev/(kb*temperature) - (calculo_ph) )
    f <- append(f,x)
  }
   return(f)
}


maximum_growth_rate_ph(p =0.8, temperature = 278, energy= 0.33, calculo_ph = vph[3]) # funciona uno a uno 

lotka_volterra_ph <- function(t, state, parameters) {
  # Extract state variables (population sizes of the species)
  N <- state
  
  # Extract parameters: growth rates and interaction matrix
  r <- parameters$r      # Growth rates
  alpha <- parameters$alpha  # Interaction coefficients matrix
  muerte<-parameters$muerte
  ph <- parameters$ph
  # Define the system of differential equations for each species
  dN_dt <- r * N *(1 - (alpha %*% N) - muerte)# Lotka-Volterra interaction terms
  
  # Return the rate of change for each species
  list(dN_dt)
}


# FUNCION QUE CREA LISTAS DE PARAMETROS SEGUN LA TEMPERATURA 
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



# FUNCION PARA HACER LAS SIMULACIONES 
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

library(ggplot2)
### 1a simulacion con ph 
## 50spp3 # 
number_species3 <- 50
p3 <- 0.8
tempss3 <- 278:307 #ahora vamos hasta 307 = 33° (aprox lo que se ha visto en la temp superficial del mar)
energiact3 <-0.33
matriz503 <- rnorm(number_species3*number_species3, 0.08, 0.04)
matriz503 <-matrix(matriz503, nrow = number_species3)
muert3 <- rep(0.07, number_species3)
times503 <- seq(0, 1500, by = 0.1)
directorio50_3 <- "03_Output/simulacion_1/21_rphm_50spp3/"
nombre50_3 <- "_p08_m007_e033_50spp"
write.csv(x = matriz503, file = "03_Output/simulacion_1/21_rphm_50spp3/matriz")

condiciones50sim3 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 50)
write.csv(x = condiciones50sim3, file = "03_Output/simulacion_1/21_rphm_50spp3/InCn")

#añadimos valores de ph 
ph_503 <- phvalz(number_species3)
write.csv(x = ph_503, file = "03_Output/simulacion_1/21_rphm_50spp3/ph3")


sims100art3 <- simulaciones_conph(numero_species= number_species3, iniciales = condiciones50sim3, pvalor = p3, 
                            temps = tempss3, energia = energiact3, morte = muert3, matriz = matriz503, 
                            tiempo= times503, directorio = directorio50_3, nombre = nombre50_3, valores_de_ph = ph_503)

# 50spp4 
number_species4 <- 50
p4 <- 0.8
tempss4 <- 278:307
energiact4 <-0.33
matriz504 <- rnorm(number_species4*number_species4, 0.16, 0.08)
matriz504 <-matrix(matriz504, nrow = number_species4)
muert4 <- rep(0.07, number_species4)
times504 <- seq(0, 1500, by = 0.1)

directorio50_4 <- "03_Output/simulacion_1/22_rphm_50spp4/"
nombre50_4 <- "_p08_m007_e033_50spp"
write.csv(x = matriz504, file = "03_Output/simulacion_1/22_rphm_50spp4/matriz")

condiciones50sim4 <- read.csv("03_Output/simulacion_1/21_rphm_50spp3/InCn")
condiciones50sim4 

#añadimos valores de ph 
ph_504 <- phvalz(number_species4)
write.csv(x = ph_504, file = "03_Output/simulacion_1/22_rphm_50spp4/pH")

sims100art4 <- simulaciones_conph(numero_species= number_species4, iniciales = condiciones50sim4, pvalor = p4, 
                            temps = tempss4, energia = energiact4, morte = muert4, matriz = matriz504, 
                            tiempo= times504, directorio = directorio50_4, nombre = nombre50_4, valores_de_ph = ph_504)

# 50spp5 
number_species5 <- 50
p5 <- 0.8
tempss5 <- 278:307
energiact5 <-0.33
matriz505 <- rnorm(number_species5*number_species5, 0.64, 0.32)
matriz505 <-matrix(matriz505, nrow = number_species5)
muert5 <- rep(0.07, number_species5)
times505 <- seq(0, 1500, by = 0.1)

directorio50_5 <- "03_Output/simulacion_1/20_rph_50spp5/"
nombre50_5 <- "_p08_m007_e033_50spp"
write.csv(x = matriz505, file = "03_Output/simulacion_1/20_rph_50spp5/matriz")

condiciones50sim5 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 50)
write.csv(x = condiciones50sim5, file = "03_Output/simulacion_1/20_rph_50spp5/InCn")

#añadimos valores de ph 
ph_505 <- phvalz(number_species5)
write.csv(x = ph_505, file = "03_Output/simulacion_1/20_rph_50spp5/pH")

sims100art5 <- simulaciones_conph(numero_species= number_species5, iniciales = condiciones50sim5, pvalor = p5, 
                                  temps = tempss5, energia = energiact5, morte = muert5, matriz = matriz505, 
                                  tiempo= times505, directorio = directorio50_5, nombre = nombre50_5, valores_de_ph = ph_505)

