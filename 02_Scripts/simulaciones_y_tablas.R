#########################################
#### CICLO ####
# LA QUE NO VARIA POR NADA DEL MUNDO 
# read.csv("")
mtx <- read.csv("03_Output/simulacion_p08_ev033_muerte007/matriz_de_interacciones")
alpha <- sapply(mtx, as.numeric)
alpha <- as.matrix(alpha[,-1])


# CONSTANTES DENTRO DEL MODELO 
number_species <- 20
p <- 0.8
energy<-0.33
a <- 1.7e5
kb<-1.380649e-23
energy_ev <- ev_to_joules(energy)
rna_copy_number <- rgeom(1,p) + 1 # DA 1
muerte <- rep(0.07, number_species)
times <- seq(0, 1000, by = 0.1)


## ESTO DEBERIA CAMBIAR EN BASE A LA TEMPERATURA 
temperature <- 298
rv <- a*rna_copy_number*exp(-energy_ev/(kb*temperature))
r <- rep(rv, number_species)
parameters <- list(r = r, alpha = alpha, muerte=muerte)


# ESTO ES LO QUE SI VARIA PARA CADA SIMULACION 
initial_state <- runif(number_species)
result <- ode(y = initial_state, times = times, func = lotka_volterra, parms = parameters)
result_df <- as.data.frame(result)

matplot(result_df$time, result_df[, -1], type = "l", lty = 1, col = 1:number_species,
        xlab = "Time", ylab = "Population Size", main = paste("Lotka-Volterra Model for",number_species, "Species"))

write.csv(result_df, "03_Output/simulacion_p08_ev033_muerte007/298/20spp/298_p08_m007_e033_20spp10")
