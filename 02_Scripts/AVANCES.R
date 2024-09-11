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




#### FUNCION DE TEMPERAUTRA #### + rgeom 
# We drew the copy numbers of simulated species from a geometric distribution, (1 − p)^k−1*p, 
# where k is the copy number and the parameter p representsthe fraction of taxa
# with copy number =1 in the starting distribution of the community.

# K = numero de copias (distribucion geometrica)
# p - representa los taxa con numero de copias de 1 en la distirbucion inicial de la 
# poblacion 

lvtgeom <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1] # probabilidad
  p1 <- params[3,2] # numero que necesitamos
  k <- params[3,2]
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  
  
  Rxgeom <- rgeom(p1, p)+1
  
  r <- 1.7e+5*Rxgeom*exp(-5.2871828922e-20/(temp*1.380649e-23))
  
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}

# rgeom para utilizar la distribucion geometrica y sacar de ahi los valores de 
# R que necesito 
# R va de 1-10, se saca con distibucion geometrica, tengo que meter en esta funcion
# probabilidad de que suceda en cierta iteracion y el primer parametro de la 
# funcion indica la cantidad de numeros que deseo que salgan con distribucion geometrica

lvtgeomperso <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  Rxv <- params[3,1] # valor de R determinado por la persona 
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  
  r <- 1.7e+5*Rxv*exp(-5.2871828922e-20/(temp*1.380649e-23))
  # max growth rate for specific T° and R values 
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}

########## INTENTO DE REPRODUCCION DE RESULTADOS ############
##### 11 SEPTIEMBRE ####
# S1 EJEMPLOS 

temperaturas <- 278.15:298.15 # en la figura van de 5° a 25°C [los converti a kelvin]

## R = 3 para especies de rapido crecimiento 
valsr <- c()
for (i in 1:length(temperaturas)){
  r <- 1.7e+5*Rxval*exp(-5.2871828922e-20/(temperaturas[i]*1.380649e-23))
  valsr <- append(valsr, r)
} 

## R = 1 para especies de lento crecimiento
valsrb <- c()
Rxvalb <- 1
for (i in 1:length(temperaturas)){
  r <- 1.7e+5*Rxvalb*exp(-5.2871828922e-20/(temperaturas[i]*1.380649e-23))
  valsrb <- append(valsrb, r)
} 

# obtengo valores de crecimiento para cada una de las temperaturas que usaron [5-25°]
# con ellas hacen la relacion temperature vs maxgrowthrate 
# plotear 

temps <- 1:21

valsr <- as.data.frame(valsr)
valsrb <- as.data.frame(valsrb)

df3 <- data.frame(temperaturas, valsr)
df1 <- data.frame(temperaturas, valsrb)
muerte <- 0.1
dfmute <- data.frame(temperaturas, muerte)

ggplot() +
  geom_line(data = df3, aes(x = temperaturas, y = valsr, color = "1")) +
  geom_line(data = df1, aes(x = temperaturas, y = valsrb, color = "2")) +
  geom_line(data = dfmute, aes(x = temperaturas, y = muerte, color = "3")) +
  
  scale_color_manual(name = "Lines",
                     values = c("1" = "red", "2" = "blue", "3" = "black"))


##############################################################################################################################################################
##### DESDE AQUI ####
# Figura 2 
# i. 
# Mean of normal distrib = 0.5 
# sd = 0.25
# p = 0.8 para distrib geometrica 
# s = 0.07
# energia de activacion 0.33
# prefactor a = 170,000 


lvtgmpers <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  Rxv <- params[3,1] # valor de R determinado por la persona 
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  
  r <- 1.7e+5*Rxv*exp(-5.2871828922e-20/(temp*1.380649e-23))
  # max growth rate for specific T° and R values 
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
  
}




# SIMULACION CON ESTOS DATOS 
# 100 especies interactuantes 
mtz100 <- matrix(rnorm(10000, mean = 0.5, sd = 0.25), byrow = T, nrow = 100)

# A esta matriz le pongo la diagonal en 0 porque no debe existir interaccion
# entre el mismo individuo 

diag(mtz100) <- 0 
# diagonal de la matriz tiene 0s 

rvlz <- rgeom(1, 0.8) + 1
rvlz
# valor de distribucion geometrica para R 

s <- 0.07
# muerte 

temp <- 278.15
# temperatura para ls imulacion


paramz <- rbind(temp, s, rvlz, mtz100)
# Matiz con los parametros 

tiempo <- seq(0, 20, by = 0.1)
iniciovs <- runif(100, 0, 1)

fig2sim <- ode(y = iniciovs, func=lvtgeomperso, times = tiempo, parms = paramz)
fig2sim

plot(fig2sim)

matplot(tiempo, fig2sim[,-1], type="l", ylab="Cambio", xlab = "tiempo")


# FIG 2.2  ####
# mean randomly drawn from a uniform distribution 

rf <- runif(1, min=0.1, max=1)
rf
# mean value 

sd <- rf/2

mtz100_2 <- matrix(rnorm(10000, mean = rf, sd = rf/2), byrow=T, nrow=100)
View(mtz100_2)

diag(mtz100_2) <- 0

vp <- runif(1, 0.6, 0.9)
vp

valorR <- rgeom(1, vp)+1
valorR

mortality <- runif(1, 0.03, 0.2)
mortality

eng <- runif(1, 1.602177423205233e-20, 9.613064539231397e-20) # energia de activacion en Joules  
eng

vct <- c( (0.46e+5*exp(-eng/(1.380649e-23*300))), (0.05e+5*exp(-eng/(1.380649e-23*278))) )
vct

factor <- mean(vct)
factor
# ya tengo el prefactor 

tura <- 278

parms_2_2 <- rbind(tura, mortality, valorR, eng, factor,mtz100_2)
tiempo22 <- seq(0, 300, by=1)
inicio22 <- runif( 100, 0, 1)

lvtpersonalizado <- function (time, state, params){
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  Rxv <- params[3,1] # valor de R determinado por la persona 
  eV <- params[4,1]
  pref <- params[5,1]
  a <- params[-c(1,2,3,4,5), ] # matriz de interaccion 
  
  r <- pref*Rxv*exp(-eV/(temp))
  # max growth rate for specific T° and R values 
  
  
  for (i in 1:nrow(a)) {
    lvmds <- r * state[i] * ( 1 - (a %*% state)) - s[i]
  }
  
  return(list(lvmds))
}


fig22 <- ode(inicio22, tiempo22, lvtpersonalizado, parms_2_2)
fig22
matplot(tiempo22, fig22[,-1], type="l", ylab="Cambio", xlab = "tiempo")
# a pues todas se mueren 

length(tiempo22)
length(fig22)

plot(fig22)
# pues todas se mueren... 

length(tiempo22)
length(fig22)

#################################################################################################################################################################
##### HASTA AQUI ####
# MEAN COPY NUMBER 
# Sum(Ri*Yi)
# Donde:
# Ri = Abundancia relativa 
# Yi = numero asignado de ASV i 

# MCN = sum(abundancia reltaiva de cada especie) / sum(abundancia de cada spp/numero de copias asignado)
aotwmcn <- read.csv("01_RawData/AOT_generic_data.csv")
aotpurif <- aotwmcn[, c(1,11:395)]
aotpurif <- as.data.frame(t(aotpurif))
# Ya tengo la base de datos purificada, extraje cada OTU, con su respectivo numero de copias y 
# presencia en cada uno de los muestreos
# uso la transpuesta porque es mas comodo para mi para sacar las abundancias de cada spp en 
# cada muestreo 

rnombres <- row.names(aotpurif)
cnombres <- aotpurif[1,]
# Para tenerlos por si necesito reasignarlos 

aotpurif <- aotpurif %>%
  row_to_names(row_number = 1)
# Row to names 
View(aotpurif)


aotpurif$total <- rowSums(sapply(aotpurif,function(x) as.numeric(as.character(x))))
# agnado columna con valores totales de individuos en cada muestreo

aotpurif <- as.data.frame(sapply(aotpurif, as.numeric))
rownames(aotpurif) <- colnames(aotwmcn[,11:395])
# hago que lo lea como numeros para poder sacar abundancia 
# y agrego los nombres de la matriz de antes porpque se perdieron 



abundancia <- as.data.frame(sapply(aotpurif, as.numeric))
for (i in 1:(ncol(aotpurif) - 1)) {
  abundancia[i] <- abundancia[i] / abundancia$total
}

rownames(abundancia) <- length(colnames(aotwmcn[,11:395]))
View(abundancia)

# MCN = Xi/sum(Xi/R1) Xi - abundancia relativa /// R1 copy number asociado a la especie 

cn <- aotwmcn[,9]
cn
# copy number, uno para cada especie, es correpondiente

mcn <- matrix()

for (i in 1:nrow(abundancia)){
  sumamcn <- sum( (abundancia[i,])/(cn[i]) )
  
  mcn[i] <- abundancia[i,]/sumamcn
  
}

length(mcn)
# tamagno de 385 (uno para cada una de las muestras)
# Es lo que ellxs hicieron, mcn para cada uno de los muestreos 
# 

mcn <- as.data.frame(t(mcn))
view(mcn)

rownames(mcn) <- (aotwmcn[, 1])
View(aotwmcn)
# veamos si coinciden los valores de las columnas entre entries 
mcncompilado <- cbind(mcn, alldata$Estimate)


################
# FIG 2 #
library(ggplot2)
mega <- read.csv("01_RawData/Mega_Table_metadata.csv")
View(mega)
# MEGA TABLE con los datos de abundancia relativa para las spps 
# asi como los numeros de copia asociados 


F2B1<- subset(mega, select = c("WMCN", "Temperature", "Date"))
F2BLMO <- F2B1[404:1261,]

F2BLMO$Date <- format(F2BLMO$Date, "%m/%d/%y")



### ANT ####
F2B2 <- mega[2678:2294,]
F2B2AOT <- subset(mega, select = c("WMCN","Latitude", "Temperature"))
View(F2B2AOT)

plot(F2B2AOT$Latitude, F2B2AOT$WMCN)

install.packages("gapminder")
library(gapminder)
gapminder
gapminder %>% 
  group_by(Latitude, year = ceiling(year/5) * 5) %>% 
  summarize(year = paste(first(year) - 5, first(year), sep = '-'),
            lifeavg = mean(lifeExp)) %>%

str(F2B2AOT)
