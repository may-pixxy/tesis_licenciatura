# Mendoza Velazquez Mayra 

# Lo primero es establecer el modelo sobre el cual voy a trabajar 

#### MODELO PH + TEMPERATURA ####
### modelo 1 ####
lvteph1 <- function (time, state, params){
  
  temp <- params$temperatura
  s <- params$muerte # tasa de muerte 
  p <- params$valorp # spps cuyo n copias = 1 segun articulo 
  k <- params$valork # numero de copias
  ph1 <- params$phactual  # pH "actual" de agua oceanica
  phoc <- params$phoptimo # ph optimo/normal en el oceano
  phmx <- params$phmax # ph maximo para crecim de spp
  phmn <- params$phmin # ph minimo para crecim de spp 
  a <- params$matriz # matriz de interaccion 
  spp <- length(state)
  spp <- as.numeric(spp)
  
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
  
  resultados <- spp
  
  for (i in 1:spp) {
    intx <- sum(a[i,] * state)
    resultados[i] <- state[i] * ( r1[i] + intx) - s[i]
  }
  
  # Modelo LOTKA VOLTERRA 
  # state - valores iniciales 
  # a - matriz de interacciones 
  # s - tasa de muerte 
  
  return(list(resultados))
}



lvteph2 <- function (time, state, params){
  
  temp <- params$temperatura
  s <- params$muerte # tasa de muerte 
  p <- params$valorp # spps cuyo n copias = 1 segun articulo 
  k <- params$valork # numero de copias
  ph1 <- params$phactual  # pH "actual" de agua oceanica
  phoc <- params$phoptimo # ph optimo/normal en el oceano
  phmx <- params$phmax # ph maximo para crecim de spp
  phmn <- params$phmin # ph minimo para crecim de spp 
  a <- params$matriz # matriz de interaccion 
  spp <- length(state)
  spp <- as.numeric(spp)
  
  ### INCIO DE OPERACIONES ##
  cmph <- (phoc - phmn) * (phmx - phoc)
  # solo para facilitar la lectura de la formula 
  # cambio de pH 
  # toma en cuenta pH minimo y maximo para el crecimiento de especies 
  
  
  r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))
  r1 <- r*(ph1 - phoc)
  
  
  # Tasa de crecimiento con valores de formula de arrhenius integrados 
  # adicione  el efecto del cambio en el pH asumiendo que variaciones en este
  # (modificaciones sobre el valor optimo del pH oceanico independientemente de si estos 
  # valores son por arriba o debajo del phoptimo) seran perjuduciales para la tasa de crecimiento
  # de especies bacterianas 
  
  # DUDA: es mejor multiplicar la tasa de crecimiento misma por el cambio experimentado
  # en el pH o es mejor utilizar el signo negativo para denotar el impacto 
  # sobre la tasa de crecimiento 
  
  
  for (i in 1:spp) {
    intx <- sum(a[i,] * state)
    resultados <- state[i] * ( r1[i] + intx) - s[i]
  }
  
  # Modelo LOTKA VOLTERRA 
  # state - valores iniciales 
  # a - matriz de interacciones 
  # s - tasa de muerte 
  
  return(list(resultados))
}


spp <- length(valoresin)


spp <- as.numeric(spp)
class(spp)
spp

spp[2]
# YA TENGO EL MODELO 
# NECESITO: ROOTFUNC / EVENT FUNC
# FUNCION QUE RECOPILE LOS VALORES CAMBIANTES DE CADA UNA DE LAS COLUMNAS Y
# LOS RECOPILE 

# EJERCICIO 
temp <- params$temperatura
s <- params$muerte # tasa de muerte 
p <- params$valorp # spps cuyo n copias = 1 segun articulo 
k <- params$valork # numero de copias
ph1 <- params$phactual  # pH "actual" de agua oceanica
phoc <- params$phoptimo # ph optimo/normal en el oceano
phmx <- params$phmax # ph maximo para crecim de spp
phmn <- params$phmin # ph minimo para crecim de spp 
a <- params$matriz


temp5 <- 250:255
s5 <- 0.2
pk5 <- c(0.2, 0.1)
matriz5 <-  matrix(runif(25, 0, 1) , nrow = 5)
tiempo5 <- seq(0, 50, by = 1)
dinicio5 <- runif(5, 0 , 1)

parametros <- list(
  temperatura <- 278,
  muerte <- 0.2,
  valorp <- 0.2,
  valork <- 0.1,
  phactual <- 6.0, 
  phoptimo <- 7.0, 
  phmax <- 8.0, 
  phmin <- 5.0, #actual, optimo, maximo, minimo
  matriz <-matrix(c(
    0.01, 0.03, -0.2, 0.0, 
    0.0, 0.0, 0.0, -0.1, 
    0.2, 0.0, 0.0, 0.0,  
    0.0, 0.1, 0.0, 0.0), 
    nrow = 4, ncol = 4, byrow = TRUE)  
)

valoresin <- c(0.1, 0.3, -0.1, -0.2)
taim <- seq(0, 20, by = 1)


ejercicio1 <- ode(y = valoresin, times = taim, func = lvteph2, parms = parametros)
ejercicio1
# The number of derivatives returned by func() (0) must equal the length of the 
# initial conditions vector (4)
# Esto es solo con la funcion, sin incluir el rootfunc y el eventfunc 


# AQUI 
# Organizado con params$listobjeto 
# Modelo __ articulo de referencia 
# UNICAMENTE el modelo 
# si funciona pero la simulacion ni siquiera arranca 

################################################################################
#### SERVICIO AVANCE ####
#### modelo ####
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

# MODELO [sin ph]


# funcion distintas temperaturas (no ph)
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



# rootfunc
# funcion a usar: lvnspp2 

out23 <- ode(y0, times, model, parms, 
             events = list(func = eventfun, root = TRUE), rootfunc=rootfun)
eps <- 1e-2
rootfun <- function (t, y, params) {
  return(y - eps)
}

eventfun <- function(t, y, params) {
  if (y[1] <= eps) y[1] <- 0
  if (y[2] <= eps) y[2] <- 0
  if (y[3] <= eps) y[3] <- 0
  
  return(y)
}

# Basicamente le digo a R, si cumple con el valor entonces ponle 0 
# sino continua la simulacion 
# lvnspp2 <- temp, s, p, k, a

#Parametros
times <- seq(0, 100, by = 1)
matriz_ej <- matrix(c(
  -0.01, 0.01, -0.02,
  -0.01, -0.02, 0.01,
  0.02, -0.01, -0.03
  ), nrow = 3, byrow = TRUE)

muerte <- (0.003)

tmpa <- 278

pk <- c(0.00002, 0.003)


# variables
parametros <- rbind(tmpa, muerte, pk, matriz_ej)
tiemps <- seq(0, 100, by = 1) 
vinc <- runif(3, 0, 1)

ejcvv <- ode(vinc, tiemps, lvnspp2, parametros, 
             events = list(func = eventfun, root = TRUE), rootfunc = rootfun)

plot(ejcvv)
View(ejcvv)

# https://stackoverflow.com/questions/74903541/apply-event-root-function-to-large-set-of-equations-r-desolve

# DEL OBJETO DE ROOTFUNC QUE TENGO HACER QUE SELECCIONE LOS VALORES MAS BAJOS 
# DISTINTOS DE 0 


valoresmin <- list()
for (i in 1:ncol(df)){
  valoresmin <- min(df[i][df[i] != 0])
  print(valoresmin)
}

#########
### modelo 2 ####
lvnspp3 <- function(time, state, params) {
  
  temp <- params[1, 1]
  # temperaturas con que voy a hacer arrhenius para sacar r 
  s <- params[2,] # tasa de muerte 
  p <- params[3,1]
  k <- params[3,2]
  a <- params[-c(1,2,3), ] # matriz de interaccion 
  nspp <- length(state)
  camdsp <-  numeric(nspp)

  r <- 1.7e+5*(1-p)^(k-1)*exp(-5.2871828922e-20/(temp*1.380649e-23))
  
  for (i in 1:nspp) {
    intx<- sum(a[i, ] * state)
    camdsp[i] <- state[i] * (r[i] + intx) - s[i]
  }

  return(list(camdsp))
} 


# Con este modelo probare si funciona 
ejcvv2 <- ode(vinc, tiemps, lvnspp3, parametros)
ejcvv2
# NA despues del tiempo 0 FOR GUAAAAAIII 
