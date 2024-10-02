# Conglomerado de modelos LV que si funcionan # 
# Creo que el modelo per se no esta mal, lo estan los parametros 
# tasa de muerte es mayor que la de crecimiento por eso se van todas a 
# extincion 

library(deSolve)
library(miaSim)
library(ggplot2)
library(primer)

#### VALOR TASA DE CRECIMIENTO ####
# r = aRe^(-(E)/(Kb*T))

# DONDE: 
# a = prefactor 
# R = (1-p)^(k-1)*p 
# E = Energia de activacion 
# kb = constante de boltzman 
# T = temperatura (en kelvin SEGUN)

# r usado en formulas anteriores 
r <- 1.7e+5*(1-p)^(k-1)*p*exp(-5.2871828922e-20/(temp*1.380649e-23))
r <- 1.7e+5*R*exp(-5.2871828922e-20/(temp*1.380649e-23))



#### INICIO DE LOS MODELOS A PROBAR ####
#### ECOLOGIA MATEMATICA ####

# MODELO  extraido directamente # 
GLV <- function(t, x, parameters){
  with(as.list(c(x, parameters)), {
    x[x < 10^-8] <- 0 # prevent numerical problems
    dxdt <- x * (r + A %*% x)
    list(dxdt)
  })
}
# FIN DE MODELO #





# funcion a base de modelo lv ecologia matematica #
glv_ecologia <- function(t, state, params){
  with(as.list(c(state, params)), {
    
   # parametros para tasa de crecimiento y formula #
    a <- params$a  #valor de prefactor 
    R <- params$cp #Valor de copy number 
    Ev <- params$energia #energia de activacion 
    temp <- params$temperatura # temperatura de simulacion en kelvin
    s <- params$muerte
    mtz <- params$matriz #matriz de interacciones
    
    
    # formula para tasa de crecimiento 
    r <- a*R*exp(-(Ev/(1.380649e-23*temp)))
    
    state[state < 10^-8] <- 0 # prevent numerical problems
    
    for (i in 1:nrow(mtz)){
      lvecologia <- state[i] * (r + mtz %*% state) - s[i]
    }
    
    list(lvecologia)
  })
}


# OBJETO PARAMETROS DEBE TENER (lista)
# a <- prefactor 
# cp <- copy number o valor de R 
# energia <- energia de activacion 
# temperatura <- temperatura para la simulacion 
# muerte <- tasa de muerte 
# matriz <- matriz de interacciones 


# EJEMPLO CON DATOS DEL ARTICULO # 

# objeto parametros #
a <- 1.7E5
R <- rgeom(1, 0.8) + 1
Ev <- 5.2872E-20
tempz <- 278.15
sv <- 0.05
matriz100 <- matrix(rnorm(10000, mean = 0.5, sd = 0.25), byrow = T, nrow = 100)
diag(mtz100) <- -diag(mtz100)


parametros <- list(a = a, cp = R, energia = Ev, temperatura = tempz, muerte = sv, matriz = matriz100 )

# objetos tiempo y valores de inicio de la simulacion 

tiempo <- seq(0, 3, by = 0.01)
iniciovs <- runif(100, 0, 1)

# Simulacion #

ejemplo_ecologia <- ode(y = iniciovs, func = glv_ecologia, times = tiempo, parms = parametros)
plot(ejemplo_ecologia)

ejemplo_ecologia
# Lo que pasa es que desde el tiempo 2 los valores llegan a NA 

a*R*exp(-(Ev/(1.380649e-23*tempz)))
# con los valores asi como estan da 1.783139e-11 
# pero si uso valores de centigrados el valor de R me da 0 


#### LV miaSim ####
# modelo : simulateGLV

growth <- a*R*exp(-(Ev/(1.380649e-23*tempz)))

glv_miasim <- simulateGLV(n_species = 100, A = matriz100, x0 = iniciovs, growth_rates = growth)
glv_miasim

valoresmiasim <- (assay(glv_miasim))
valoresmiasim
# Primera columna si tiene valores de abundancia despues de eso solo tiene valores de NA 
# Seguramente lo que esta fallando es tener los valores de growth porque creo que lo que 
# sucede es que las poblaciones no estan creciendo dados los valores tan chikitos de r 




#### MODELO DEC COMPETENCIA MIASIM ####
# modelo a usar: lvcompg
paramtrs <- list(growth, matriz100)
paramtrs

lv_lvcm <- ode(iniciovs, tiempo, lvcompg, paramtrs)
plot(lv_lvcm)


# PROBLEMAS: 
# NO ENCONTRE COMO INCLUIR TASA DE MUERTE CON LA FUNCION LVCOMPG 
# 2. SE MUEREN OTRA VEZ (AUNQUE AHORA YA NO LLEGAN A NUMEROS NEGATIVOS)


# generate a random interaction matrix
ExampleA <- randomA(n_species = 4, diagonal = -1)

# run the model with default values (only stochastic migration considered)
tse <- simulateGLV(n_species = 4, A = ExampleA)

# run the model with two external disturbances at time points 240 and 480
# with durations equal to 1 (10 time steps when t_step by default is 0.1).
ExampleGLV <- simulateGLV(
  n_species = 4, A = ExampleA,
  t_external_events = c(0, 240, 480), t_external_durations = c(0, 1, 1)
)
ExampleGLV
metadata(ExampleGLV)
