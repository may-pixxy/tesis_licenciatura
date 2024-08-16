# AVANCES 
# ph 

#### MODELO CON TEMPERATURA ####
lvnspp2 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
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
  
  return(resultados)
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
}


## MODELO CON TEMPERATURA Y PH (INTENTO 1 POR INCLUIR PH) ##
lvnspph1 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  ph1 <- params[4,1]  # pH "actual" de agua oceanica
  phoc <- params[4,2] # ph optimo/normal en el oceano
  phmx <- params[4,3] # ph maximo para crecim de spp
  phmn <- params[4,4] # ph minimo para crecim de spp 
  a <- params[-c(1,2,3,4), ] # matriz de interaccion 
  
  cmph <- (phoc - phmn) * (phmx - phoc)
  # solo para facilitar la lectura de la formula 
  # cambio de pH 
  # toma en cuenta pH minimo y maximo para el crecimiento de especies 
  
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23)) - (((ph1 - phoc)^2)/cmph)
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}

## INTENTO DOS ##

lvnspph2 <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  ph1 <- params[4,1]  # pH "actual" de agua oceanica
  phoc <- params[4,2] # ph optimo/normal en el oceano
  phmx <- params[4,3] # ph maximo para crecim de spp
  phmn <- params[4,4] # ph minimo para crecim de spp 
  a <- params[-c(1,2,3,4), ] # matriz de interaccion 
  
  cmph <- (phoc - phmn) * (phmx - phoc)
  # solo para facilitar la lectura de la formula 
  # cambio de pH 
  # toma en cuenta pH minimo y maximo para el crecimiento de especies 
  
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23)) 
  r1 <- r*(ph1 - phoc)
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}

################################################################################

## FUNCION PARA CREAR VARIAS MATRICES, C/U CON TEMP DISTINTA, MISMOS VALORES DE PH ##
convariaciones_ph <- function(temp, s, pk, ph, a, tiempo, incio){
  
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
  resultados <- list()
  for (x in 1:length(params)){
    resultados[[x]] <- ode(incio, tiempo, lvnspph1, params[[x]])
    names(resultados)[[x]] = paste0("reslt",x)
  }
  
  return(resultados)
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
}


## EJEMPLO CON 5 TEMPS
temp5 <- 250:255
s5 <- 0.2
pk5 <- c(0.2, 0.1)
ph5 <- c(7.4, 7, 9, 6) # actual, optimo/normal, maximo, minimo
matriz5 <-  matrix(runif(25, 0, 1) , nrow = 5)
tiempo5 <- seq(0, 50, by = 1)
dinicio5 <- runif(5, 0 , 1)

ejemplo_conv <- convariaciones(temp5, s5, pk5, ph5,matriz5, tiempo5, dinicio5)
ejemplo_conv


# VARIAS MATRICES 

# ROOT FUNC 
###############################################################################
### EJERCICIO 
# CONVARIACIONES 1 SOLA TEMPERATURA 
# PROBAR QUE ROOT FUNCTION FUNCIONA PARA TODAS LAS VARIABLES
# PRUEBA 
# 1. ROOTFUNC CON UNA MATRIZ (FUNCION PARA HACER MATRICES)


## FUNCION PARA CREAR MATRICES / INTENTO POR AGNADIR ROOTFUN Y EVENTFUNC DENTRO 
## DE LA FUNCION QUE YA HABIA HECHO ANTES 
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
    resultados[[x]] <- ode(incio, tiempo, lvnspph1, params[[x]],
                           rootfun = rtfun,
                           events = list(func = event, root = TRUE))
    names(resultados)[[x]] = paste0("reslt",x)
  }
  
  return(resultados)
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
}

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

## Error en params[[x]]: 
## attempt to select less than one element in integerOneIndex [xq si ya habia corrido con el mismo codigo .-.]


### ROOT FUNCTION EJEMPLO CON OTRO MODELO QUE SI FUNCIONA 
model <- function(t, y, parms) {
  with(parms, {
    dy <- r * y  + y * (A %*% y)
    list(dy)
  })
}

## int6eraction matrix
parms <- list(
  r = c(r1 = 0.1, r2 = 0.1, r3 = -0.1, r4 = -0.1),
  A = matrix(c(
    0.0, 0.0, -0.2, 0.0, # prey 1
    0.0, 0.0, 0.0, -0.1, # prey 2
    0.2, 0.0, 0.0, 0.0,  # predator 1; eats prey 1
    0.0, 0.1, 0.0, 0.0), # predator 2; eats prey 2
    nrow = 4, ncol = 4, byrow = TRUE)
)
parms
times = seq(0, 150, 1)
y0  = c(n1 = 1, n2 = 1, n3 = 2, n4 = 2)

out <- ode(y0, times, model, parms)
plot(out)

## defined as global variables for simplicity, can also be put into parms
threshold <- 0.2  # can be a vector of length(y0)
y_new     <- 0 # can be a vector of length(y0)

## uncomment the 'cat' lines to see what's going on
rootfunc <- function (t, y, p) {
  #cat("root at t=", t, "\n")
  #cat("y old =", y, "\n")
  return(y - threshold)
}

eventfunc <- function(t, y, p) {
  #cat("y old =", y, "\n")
  y <- ifelse(y <= threshold, 0, y)
  #cat("y new =", y, "\n")
  return(y)
}

out23 <- ode(y0, times, model, parms, 
             events = list(func = eventfunc, root = TRUE), rootfunc=rootfunc)

View(out23)
# REFERENCIA: https://stackoverflow.com/questions/74903541/apply-event-root-function-to-large-set-of-equations-r-desolve


# APLICANDO EL EJEMPLO A LO QUE SI ME FUNCIONA 
# Con modelo que tiene ph y temperatura 

# modelo --> funcion "lvnspph1"
temp <- 278
s <- 0.003
pk <- c(0.02, 0.003)
ph <- c(6, 6.5, 8, 4)
matz <-  matrix(c(
    0.0, 0.0, -0.2, 0.0, # prey 1
    0.0, 0.0, 0.0, -0.1, # prey 2
    0.2, 0.0, 0.0, 0.0,  # predator 1; eats prey 1
    0.0, 0.1, 0.0, 0.0), # predator 2; eats prey 2
    nrow = 4, ncol = 4, byrow = TRUE)
parametrs <- rbind(temp,s,pk,ph,matz)
parametrs

times <- seq(0, 150, 1)
iniciovs <- runif(4, 0, 1)
iniciovs
# 4 valores de inicio uno para cada spp, minimo 0 maximo 1 

y0  = c(n1 = 1, n2 = 1, n3 = 2, n4 = 2)

out <- ode(iniciovs, times, lvnspph1, parametrs)
plot(out)

# HASTA AQUI TODO CHILL 

## Variables globales, igual pueden ser incluidas en params 
threshold <- 0.2  # can be a vector of length(y0)
y_new     <- 0  

## uncomment the 'cat' lines to see what's going on
rtfun <- function (t, y, p) {
  #cat("root at t=", t, "\n")
  #cat("y old =", y, "\n")
  return(y - threshold)
}

eventfun <- function(t, y, p) {
  #cat("y old =", y, "\n")
  y <- ifelse(y <= threshold, y_new, y)
  #cat("y new =", y, "\n")
  return(y)
}

out24 <- ode(iniciovs, times, lvnspph1, parametrs, 
             events = list(func = eventfun, root = TRUE), rootfunc=rtfun)

View(out24)
plot(out24)
# NO ME SALE ERROR, PERO NO ESTA HACIENDO LO QUE LE PIDO QUE ES SUSTITUIR 
# LOS VALORES DE CADA COLUMNA QUE SEAN MENORES O IGUALES A 0.2


# RECOPILAR LA INFO (FUNCIONA PERFECTO)
vlz <- c()
for (f in 1:length(ejemplo_conv)){
  mz <- as.data.frame(ejemplo_conv[f])
  
  for (k in 1:ncol(mz)){
    y <- min(mz[k][mz[k] > 0])
    vlz <- append(vlz, y)
  }
}
length(vlz)

dim(vlz) <- c(6,6)
vlz <- vlz [-1,]
vlz
# Ahora Vlz es una matriz con los valores de cada una de las simulaciones
# que son distintos de 0 pero los mas pequeños 


variacionesrest <- function(temp, s, pk, ph, a, tiempo, incio){
  
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
  resultados <- list()
  for (x in 1:length(params)){
    resultados[[x]] <- ode(incio, tiempo, lvnspph1, params[[x]])
    names(resultados)[[x]] = paste0("reslt",x)
  }
  
  # hazme n numero de veces la funcion oode que ya escribi 
  # en la parte de arriba 
  # lo guarda en un objeto de lista, ahora tengo para cada temperatura 
  # los valores de abundancia. 
  
  vlz <- c()
  for (f in 1:length(resultados)){
    mz <- as.data.frame(resultados[f])
    
    for (k in 1:ncol(mz)){
      y <- min(mz[k][mz[k] > 0])
      vlz <- append(vlz, y)
    }
  }
  length(vlz)
  
  dim(vlz) <- c(6,6)
  vlz <- vlz [-1,]
  return(vlz)
  
}

# MISMA FUNCION PARA CREAR DIST MATRICES Y RESULTADOS PARA CADA UNA 
# SOLO AGNADÍ LA PARTE DE CREACION DE MATRIZ, PERO AUN NO FUNCIONA AL 100 
# FALTA QUE EL ROOTFUNC FUNCIONE PARA RECOPILAR LA INFOR CORRECTA 


temp5 <- 250:255
s5 <- 0.2
pk5 <- c(0.2, 0.1)
ph5 <- c(7.4, 7, 9, 6) # actual, optimo/normal, maximo, minimo
matriz5 <-  matrix(runif(25, 0, 1) , nrow = 5)
tiempo5 <- seq(0, 50, by = 1)
dinicio5 <- runif(5, 0 , 1)

ejmrst <- variacionesrest(temp5, s5, pk5, ph5,matriz5, tiempo5, dinicio5)
ejmrst
# regresa matriz solo con los valores de abundancia mas pequeños 
# cercanos a 0 (cuando el sistema alcanza estabilidad diriamos)
# CADA COLUMNA CORRESPONDE A UNA DE LAS MATRICES GENERADAS 
# COLUMNA 1 TEMP 1 Y ASI CON TODAS 