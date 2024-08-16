# Limpiando informacion 

# Load the deSolve package
library(deSolve)

# Define the Lotka-Volterra model
lotka_volterra_model <- function(time, state, parameters) {
  n_species <- length(state)
  growth_rates <- parameters$growth_rates
  interaction_matrix <- parameters$interaction_matrix
  delta<-parameters$death_rates
  
  # Initialize the rate of change
  dState <- numeric(n_species)
  
  # Calculate the rate of change for each species
  for (i in 1:n_species) {
    interaction_terms <- sum(interaction_matrix[i, ] * state)
    dState[i] <- state[i] * (growth_rates[i] + interaction_terms) - delta[i]
  }
  
  return(list(dState))
} 

# Initial state (population sizes of each species)
initial_state <- c(Species1 = 10, Species2 = 5, Species3 = 8) # Example values


arhenius<-function(p,k){
  1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(278*1.380649e-23))
}
# Parameters (growth rates and interaction coefficients)
parameters <- list(
  growth_rates = c(0.5, 0.05, 0.05), # Example values
  interaction_matrix = matrix(c(
    -0.01, 0.01, -0.02,
    -0.01, -0.02, 0.01,
    0.02, -0.01, -0.03
  ), nrow = 3, byrow = TRUE),# Example interaction coefficients
  death_rates=c(0.001,0.002,0.003)
)

# Time frame for the simulation
times <- seq(0, 100, by = 1) # From time 0 to 100 in steps of 1

# Solve the ODEs
solution <- ode(y = initial_state, times = times, func = lotka_volterra_model, parms = parameters)

# Plot the solutio
matplot(solution[, "time"], solution[, -1], type = "l", xlab = "Time", ylab = "Population Size", main = "Generalized Lotka-Volterra Model")
legend("topright", legend = colnames(solution[, -1]), col = 1:ncol(solution[, -1]), lty = 1, cex = 0.8)


#### MODELO QUE INCLUYE DISTINTAS MATRICES CON DIST TEMPERATURAS ####
lvnspp2 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))
  
  spp <- numeric(nrow(a))
  
  for (i in 1:nrow(a)) {
    intx <- sum(a[i,] * state)
    spp <- state[i] * ( r1[i] + intx) - s[i]
  }
  
  
  return(list(spp))
}

# con un solo valor de r 
# valor de r va a modificarse con respecto a la temperatura 
# ademas de esto, la hice para que tome valores de una matriz a la vez

# funcion para modificar el valor de temperatura 

### FUNCION QUE IMPLEMENTA EL MODELO (INCLUYE CREACION DE MATRICES Y MODELO) ####
convariaciones <- function(temp, s, pk, a, tiempo, incio){
  
  simulacion <- list()
  for (i in 1:length(temp)) {
    simulacion[[i]] <- rbind(temp[i], s, pk, a)
    names(simulacion)[i] = paste0("matriz",i)
  }
  simulacion
  
  
  # ya tengo matrices distintas, cada una con un valor 
  # distinto de temperatura que es el objetivo 
  # hacer simuláciones con variaciones de un grado de T°
  
  # Lo que hice aqui es tomar todos los valores que son introducidos 
  # y uni esos distintos valores a un valor distinto de temperatura 
  # creando una lista de matrices donde la unica variable es la temperatura 
  # el resto de valores es el mismo, solo funcionaria para una simulacion con 
  # valores especificos de s, pk, a
  
  params <- simulacion
  resultados <- list()
  for (x in 1:length(params)){
    resultados[[x]] <- ode(incio, tiempo, lvnspp2, params[[x]])
    names(resultados)[[x]] = paste0("reslt",x)
  }
  
  return(list(resultados))
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
}

########################################
#### INCORPORANDO PH ####

# fuente: https://sci-hub.se/https://doi.org/10.1016/j.nonrwa.2018.09.024 
# Chaturvedi, D., & Misra, O. P. (2019). Modeling impact of varying pH due to carbondioxide 
# on the dynamics of prey–predator species system. Nonlinear Analysis: Real World Applications, 
# 46, 374–402. doi:10.1016/j.nonrwa.2018.09.024

lvteph1 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1] # spps cuyo n copias = 1 segun articulo 
  k <- params[3,2] # numero de copias
  ph1 <- params[4,1]  # pH "actual" de agua oceanica
  phoc <- params[4,2] # ph optimo/normal en el oceano
  phmx <- params[4,3] # ph maximo para crecim de spp
  phmn <- params[4,4] # ph minimo para crecim de spp 
  a <- params[-c(1:4), ] # matriz de interaccion 
  
  cmph <- (phoc - phmn) * (phmx - phoc)
  # solo para facilitar la lectura de la formula 
  # cambio de pH 
  # toma en cuenta pH minimo y maximo para el crecimiento de especies 

  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23)) - (((ph1 - phoc)^2)/cmph)

  # Tasa de crecimiento con valores de formula de arrhenius integrados 
  # adicione con valor negativo el efecto del cambio en el pH asumiendo que variaciones en este
  # (modificaciones sobre el valor optimo del pH oceanico independientemente de si estos 
  # valores son por arriba o debajo del phoptimo) seran perjuduciales para la tasa de crecimiento
  # de especies bacterianas 
    
  spp <- numeric(nrow(a))
  
  for (i in 1:nrow(a)) {
    intx <- sum(a[i,] * state)
    spp[i] <- state[i] * ( r1[i] + intx) - s[i]
  }
  
  # Modelo LOTKA VOLTERRA 
  # state - valores iniciales 
  # a - matriz de interacciones 
  # s - tasa de muerte 
  
  return(list(spp))
}


x<- 4

f <- length(matriz_int)
f <- sqrt(f)
class(f)

colnames(matriz_int) <- 1:x
matriz_int


lvteph2 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1] # spps cuyo n copias = 1 segun articulo 
  k <- params[3,2] # numero de copias
  ph1 <- params[4,1]  # pH "actual" de agua oceanica
  phoc <- params[4,2] # ph optimo/normal en el oceano
  phmx <- params[4,3] # ph maximo para crecim de spp
  phmn <- params[4,4] # ph minimo para crecim de spp 
  a <- params[-c(1:4), ] # matriz de interaccion 
  
  f <- length(a)
  f <- sqrt(f)
  
  colnames(a) <- 1:f
  rownames(a) <- 1:f
  
  
  ### INCIO DE OPERACIONES ##
  cmph <- (phoc - phmn) * (phmx - phoc)
  # solo para facilitar la lectura de la formula 
  # cambio de pH 
  # toma en cuenta pH minimo y maximo para el crecimiento de especies 
  
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))
  r1 <- r*(((ph1 - phoc)^2)/cmph)
  
  
  # Tasa de crecimiento con valores de formula de arrhenius integrados 
  # adicione  el efecto del cambio en el pH asumiendo que variaciones en este
  # (modificaciones sobre el valor optimo del pH oceanico independientemente de si estos 
  # valores son por arriba o debajo del phoptimo) seran perjuduciales para la tasa de crecimiento
  # de especies bacterianas 
  
  # DUDA: es mejor multiplicar la tasa de crecimiento misma por el cambio experimentado
  # en el pH o es mejor utilizar el signo negativo para denotar el impacto 
  # sobre la tasa de crecimiento 
  
  spp <- f
  
  for (i in 1:nrow(a)) {
    intx <- sum(a[i,] * state)
    spp[i] <- state[i] * ( r1[i] + intx) - s[i]
  }
  
  # Modelo LOTKA VOLTERRA 
  # state - valores iniciales 
  # a - matriz de interacciones 
  # s - tasa de muerte 
  
  return(list(spp))
}



################################################################################
# PENDIENTES 
# ROOT FUNCTION 

# Primero asigno un valor "umbral" para detener la simulacion 
# en este caso sera 0.01 por arbitrareidad 

#### FUNCION CON PH, ROOT FUNC, RECOPILACION DE INFO ####
## ROOT FUNC 

dcorte <- 1e-2 
# Primero determino el valor umbral sobre el cual va a trabajar la rootfun 

rfun <- function (time, state, paramss) {
  return(a[,i] - dcorte)
}
# Basicamente le digo a R que la rootfun (que hace que se detenga la simulacion)
# va a tener como valor base el eps (0.01 -- elegido arbitrariamente, solo quiero
# que tenga un valor muy cercano a 0)


evefun <- function(time, state, params) {
  for (i in length(a)){
  if (a[,i] <= dcorte) a[,i] <- 0
  return(y)
  }
  }
# Con esto lo que hago es decirle a R que cuando mis variables alcancen el valor eps 
# entonces quiero que le asigne valor de 0 a los valores mas bajos o iguales a 0.01 
# esto lo hago asi tambien para poder hacer subset de los valores que me interesen 



lvvariaciones <- function(temp, s, pk, ph, a, tiempo, incio, rtfun, event){
  
  simulacion <- list()
  for (i in 1:length(temp)) {
    simulacion[[i]] <- rbind(temp[i], s, pk, ph, a)
    names(simulacion)[i] = paste0("matriz",i)
  }
  simulacion
  
  
  # ya tengo matrices distintas, cada una con un valor 
  # distinto de temperatura que es el objetivo 
  # hacer simuláciones con variaciones de un grado de T°
  
  # Lo que hice aqui es tomar todos los valores que son introducidos 
  # y uni esos distintos valores a un valor distinto de temperatura 
  # creando una lista de matrices donde la unica variable es la temperatura 
  # el resto de valores es el mismo, solo funcionaria para una simulacion con 
  # valores especificos de s, pk, a

  params <- simulacion
  nsimul <- numeric(length(params))
  resultados <- list()
  for (x in 1:nsimul){
    resultados[[x]] <- ode(incio, tiempo, lvteph2, params[[x]],
                rootfun = rtfun,
                events = list(func = event, root = TRUE))
    names(resultados)[[x]] = paste0("reslt",x)
  }

  return(list(resultados))
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
}




### EJERCICIO 
# CONVARIACIONES 1 SOLA TEMPERATURA 
# PROBAR QUE ROOT FUNCTION FUNCIONA PARA TODAS LAS VARIABLES
# PRUEBA 
# 1. ROOTFUNC CON UNA MATRIZ (FUNCION PARA HACER MATRICES)


vcorte <- 0.01
rfun <- function (time, state, paramss) {
  return(state - vcorte)
}

# Basicamente le digo a R que la rootfun (que hace que se detenga la simulacion)
# va a tener como valor base el eps (0.01 -- elegido arbitrariamente, solo quiero
# que tenga un valor muy cercano a 0)


evet <- function(time, state, params) {
  state <- ifelse(state <= vcorte, 0, state)
  
  return(state)
}

temperatura <- 278
muerte <- c(0.003, 0.02)
pkvv <- c(0.02, 0.04)
phv <- c(6.5, 7.0, 9.0, 5.0) #actual, optimo, maximo, minimo
matriz_int <-  matrix(c(
  -0.01, 0.01, -0.02, 0.01, -0.06, -0.02,
  -0.01, -0.02, 0.01, 0.03, 0.04, -0.001,
  0.02, -0.01, -0.03, 0.05
), nrow = 4, byrow = F)

valoresin <- c("1" = 0.5296317, "2"= 0.1954576, "3" = 0.1143643, "4" = 0.5470029)
  length(valoresin)

taim <- seq(0, 150, by = 0.1)

ejercicio1 <- lvvariaciones(temp = temperatura, s = muerte, pk = pkvv, ph = phv, a = matriz_int, tiempo = taim, 
              incio = valoresin, rtfun = rfun, event = evet)

## ERROR : Error in lsodar(y, times, func, parms, rtol, atol, jacfunc, jactype, rootfunc,  : 
## REAL() can only be applied to a 'numeric', not a 'logical'




#############################

lvnspp3 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  spps <- length(state)
  n_sp <- numeric(spps)
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))
  
  for (i in 1:n_sp){
    sumaint <- sum(a[i,] * state)
    n_sp[i] <- state[i] * (r[i] + sumaint) - s[i]
  }
 
  return(list(n_sp))
}

iniciales <- runif(3, 0, 10) 
temperatura <- 278
sv <- 0.03
pkv <- c(0.2, 0.1)
mtz <- matrix(c(
    -0.01, 0.01, -0.02,
    -0.01, -0.02, 0.01,
    0.02, -0.01, -0.03
  ), nrow = 3, byrow = TRUE)

matriz_din <- rbind(temperatura, s, pk, mtz)
matriz_din

# Time frame for the simulation
times <- seq(0, 100, by = 1) # From time 0 to 100 in steps of 1

# Solve the ODEs
solution <- ode(y = iniciales, times = times, func = lvnspp3, parms = matriz_din)
solution


warning()
# Plot the solutio
matplot(solution[, "time"], solution[, -1], type = "l", xlab = "Time", ylab = "Population Size", main = "Generalized Lotka-Volterra Model")
legend("topright", legend = colnames(solution[, -1]), col = 1:ncol(solution[, -1]), lty = 1, cex = 0.8)













