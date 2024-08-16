# ROOT FUNCTION COMO FUNCIONA EN UNA SIMULACION 
library(deSolve)

lv <- function(times, state, parms) {
  with(as.list(c(state, parms)), {
    dR <- 2*R - 0.5*R*C
    dC <- 0.2*R*C - 0.6*C
    return(list(c(dR, dC)))
  })
}

time_vec <- seq(from = 0, to = 100, length.out = 1e4)
y_0 <- c(R = 50, C = 20)
out <- ode(y = y_0, times = time_vec, func = lv, parms = NULL, method = "lsoda")
min(out[,-1])

eps <- 1e-2
eps

## event triggered if state variable <= eps
rootfun <- function (t, y, pars) {
  return(y - eps)
}

## sets state variable = 0
eventfun <- function(t, y, pars) {
  if (y[1] <= eps) y[1] <- 0
  if (y[2] <= eps) y[2] <- 0
  return(y)
}

# si la variable alcanza el valor de 0.01 entonces asignale valor de 0 
# eso es lo que hago aqui 

out1 <- ode(y = y_0, times = time_vec, func = lv, parms = NULL, method = "lsoda",
            rootfun = rootfun,
            events = list(func = eventfun, root = TRUE))

plot(out, out1)
min(out1[,-1])
v1

View(out1)
# Yo necesito hacer que..
# for (i in 1:numspps){
#  if (y[i <= eps]) y[i] <- 0 
# 
library(stringr)

# SUBSET PARA QUITAR LOS VALORES DE 0 [QUE ES CUANDO EL SISTEMA AGARRA ESTABILIDAD]
class(out1)
abr <- subset(out1, R > 0 & C > 0)
abr2 <- subset(out1, C > 0)
View(abr)
tail(abr, 1)
# APLICAR ROOT FUNC 
# 0.01 COMO VALOR UMBRAL PARA "DETENER LA SIMULACION"
# YA QUE TENGO VALORES CON 0 
# EXTRAER COLUMNAS 


# asignar nombres a las columnas y renglones de la matriz que tengo en R [dentro de codigo
# del LVOLTERRA]

# Ya puedo aplicar rootfunc

# una vez alcanzado el root, asignar valor de 0 

# usar for () para extraer cada una de las columnas dentro de la matriz 

# subset para cada objeto, tomar cada valor de los renglones y 
# if (valor del objeto alcanza el 0){
# haz subset del cada una de las columnas 
# con el subset quita los renglones que tengan 0 
# extrae los 5 numeros (??)}


#############################################################################
library(dplyr)

f <- data.frame("ID" = c("A", "A", "B", "B", "C", "C"),
                "NUM" = c(1, 2, 4, 3, 6, 9),
                "VAL" = c(1, 0, 1, 0, 1, 0))
f %>% 
  group_by(ID) %>% 
  arrange(NUM) %>%  
  slice(n())

# PARA EXTRAER LOS VALORES QUE NECESITO ??
#####################################################
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
y_new     <- 1.0  # can be a vector of length(y0)

## uncomment the 'cat' lines to see what's going on
rootfun <- function (t, y, p) {
  #cat("root at t=", t, "\n")
  #cat("y old =", y, "\n")
  return(y - threshold)
}

eventfun <- function(t, y, p) {
  #cat("y old =", y, "\n")
  y <- ifelse(y <= threshold, 0, y)
  #cat("y new =", y, "\n")
  return(y)
}

out23 <- ode(y0, times, model, parms, 
           events = list(func = eventfun, root = TRUE), rootfunc=rootfun)
plot(out23)
View(out23)
View(out23)




# creating an outer function
outerFunction <- function(x) {
  # creating an inner function
  innerFunction <- function(y) {
    # passing a command to the function
    a <- x * y
    return(a)
  }
  return (innerFunction)
}
# To call the outer functionn
output <- outerFunction(3) 
output(5)


num <- "2"
if (num == "2") { 
  print("Number is :", NA) 
}else{ 
  print(num) 
} 

set.seed(1) # for reproducibility
r_1 <- rep(1, 3)
A_1 <- -matrix(c(10, 9, 5,
                 9, 10, 9,
                 5, 9, 10), 3, 3, byrow = TRUE)
# check the existence of feasible equilibrium
print(solve(A_1, -r_1)) # not feasibl

GLV <- function(t, x, parameters){
  with(as.list(c(x, parameters)), {
    x[x < 10^-8] <- 0 # prevent numerical problems
    dxdt <- x * (r + A %*% x)
    list(dxdt)
  })
}

plot_ODE_output <- function(out){
  out <- as.data.frame(out)
  colnames(out) <- c("time", paste("sp", 1:(ncol(out) -1), sep = "_"))
  out <- as_tibble(out) %>% gather(species, density, -time)
  pl <- ggplot(data = out) +
    aes(x = time, y = density, colour = species) +
    geom_line()
  show(pl)
  return(out)
}

integrate_GLV <- function(r, A, x0, maxtime = 100, steptime = 0.5){
  times <- seq(0, maxtime, by = steptime)
  parameters <- list(r = r, A = A)
  # solve numerically
  out <- ode(y = x0, times = times,
             func = GLV, parms = parameters,
             method = "ode45")
  # plot and make into tidy form
  out <- plot_ODE_output(out)
  return(out)
}

r_2 <- rep(10, 3)
A_2 <- -matrix(c(10, 7, 12,
                 15, 10, 8,
                 7, 11, 10), 3, 3, byrow = TRUE)
print(solve(A_2, -r_2)) # feasible

x0_2 <- runif(3)
# marca los puntos de inicio 
res_2 <- integrate_GLV(r_2, A_2, x0_2)

library (tidyr)
library(ggplot2)



df <- as.data.frame(rbind(c(0.01,0.4,0.5,5,27,0.22,25,0,0,0.3),c(0.25,0,0,2.3,3.6,6,0,0.001,0.021,0),c(22,23,0,40,0.53,0.2,0.4,0.44,0,0),c(0.1,0,0.12,0.56,0.7,13,0,0,3,4)))
df
