library(deSolve)
source("02_Scripts/Functions.R")
number_species<-50
# Initial population sizes for the 6 species
initial_state <- runif(number_species,min=1,max=100)
initial_state <- runif(number_species)
#initial_state <- rep(1,number_species)

# Growth rates for each species

p<-0.8
# Kelvin  
temperature<-278
# Electron Volts  
energy<-0.33
  
r<-rep(0,number_species)  
for(i in 1:number_species){
  r[i]<-maximum_growth_rate(p,temperature,energy)
} 
muerte<- runif(number_species,min=0.03,max=0.2)

alpha <- interaction_matrix(number_species)

# Parameters list
parameters <- list(r = r, alpha = alpha,muerte=muerte)


#Time sequence for the simulation
times <- seq(0, 1000, by = 0.1)

# Solve the ODEs using ode function from deSolve package
result <- ode(y = initial_state, times = times, func = lotka_volterra, parms = parameters)

# Convert result to a data frame for easier handling
result_df <- as.data.frame(result)

# Plot the results for all species
matplot(result_df$time, result_df[, -1], type = "l", lty = 1, col = 1:number_species,
        xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",
        number_species, "Species"))
