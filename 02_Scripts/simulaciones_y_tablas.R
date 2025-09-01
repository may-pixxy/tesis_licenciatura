############################################################################################################
############################################################################################################
############################################ INTENTO CICLO #################################################



# VALORES DE R PARA SIMULACIONES #

## 100spp1 #
number_species1 <- 100
p1 <- 0.8
tempss1 <- 278:298
energiact1<-0.33
matriz1001 <- rnorm(number_species1*number_species1, 0.5, 0.25)
matriz1001 <-matrix(matriz1001, nrow = number_species1)
muert1 <- rep(0.07, number_species1)
times1001 <- seq(0, 1000, by = 0.1)
directorio100_1 <- "03_Output/simulacion_1/100spp1/"
nombre100_1 <- "_p08_m007_e033_100spp"
write.csv(x = matriz1001, file = "03_Output/simulacion_1/100spp1/matriz")

condiciones100sim1 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 100)
write.csv(x = condiciones100sim, file = "03_Output/simulacion_1/100spp1/InCn")

sims100art <- simulaciones(numero_species= number_species1, iniciales = condiciones100sim1, pvalor = p1, 
                       temps = tempss1, energia = energiact1, morte = muert1, matriz = matriz1001, 
                       tiempo= times1001, directorio = directorio100_1, nombre = nombre100_1)

## 100spp2 #
number_species2 <- 100
p2 <- 0.8
tempss2 <- seq(278, 279, by = 0.01)
length(tempss2)
energiact2<-0.33
matriz1002 <- rnorm(number_species2*number_species2, 0.5, 0.25)
matriz1002 <-matrix(matriz1002, nrow = number_species2)
muert2 <- rep(0.07, number_species2)
times1002 <- seq(0, 1000, by = 0.1)
directorio100_2 <- "03_Output/simulacion_1/100spp2/"
nombre100_2 <- "_p08_m007_e033_100spp"
write.csv(x = matriz1002, file = "03_Output/simulacion_1/100spp2/matriz")

condiciones100sim2 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 100)
write.csv(x = condiciones100sim2, file = "03_Output/simulacion_1/100spp2/InCn")

sims100art <- simulaciones(numero_species= number_species2, iniciales = condiciones100sim2, pvalor = p2, 
                           temps = tempss2, energia = energiact2, morte = muert2, matriz = matriz1002, 
                           tiempo= times1002, directorio = directorio100_2, nombre = nombre100_2)


## 50spp3 # 
number_species3 <- 50
p3 <- 0.8
tempss3 <- 278:307
energiact3 <-0.33
matriz503 <- rnorm(number_species3*number_species3, 0.08, 0.04)
matriz503 <-matrix(matriz503, nrow = number_species3)
muert3 <- rep(0.07, number_species3)
times503 <- seq(0, 1000, by = 0.1)
directorio50_3 <- "03_Output/simulacion_1/50spp3/"
nombre50_3 <- "_p08_m007_e033_50spp"
write.csv(x = matriz503, file = "03_Output/simulacion_1/50spp3/matriz")

condiciones50sim3 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 50)
write.csv(x = condiciones50sim3, file = "03_Output/simulacion_1/50spp3/InCn")

sims100art3 <- simulaciones(numero_species= number_species3, iniciales = condiciones50sim3, pvalor = p3, 
                           temps = tempss3, energia = energiact3, morte = muert3, matriz = matriz503, 
                           tiempo= times503, directorio = directorio50_3, nombre = nombre50_3)

# 50spp4 
number_species4 <- 50
p4 <- 0.8
tempss4 <- 278:298
energiact4 <-0.33
matriz504 <- rnorm(number_species4*number_species4, 0.16, 0.08)
matriz504 <-matrix(matriz504, nrow = number_species4)
muert4 <- rep(0.07, number_species4)
times504 <- seq(0, 1000, by = 0.1)

directorio50_4 <- "03_Output/simulacion_1/50spp4/"
nombre50_4 <- "_p08_m007_e033_50spp"
write.csv(x = matriz504, file = "03_Output/simulacion_1/50spp4/matriz")

condiciones50sim4 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 50)
write.csv(x = condiciones50sim4, file = "03_Output/simulacion_1/50spp4/InCn")

sims100art4 <- simulaciones(numero_species= number_species4, iniciales = condiciones50sim4, pvalor = p4, 
                            temps = tempss4, energia = energiact4, morte = muert4, matriz = matriz504, 
                            tiempo= times504, directorio = directorio50_4, nombre = nombre50_4)

# 50spp5 
number_species5 <- 50
p5 <- 0.8
tempss5 <- 278:298
energiact5 <-0.33
matriz505 <- rnorm(number_species5*number_species5, 0.64, 0.32)
matriz505 <-matrix(matriz505, nrow = number_species5)
muert5 <- rep(0.07, number_species5)
times505 <- seq(0, 1000, by = 0.1)
directorio50_5 <- "03_Output/simulacion_1/50spp5/"
nombre50_5 <- "_p08_m007_e033_50spp"
write.csv(x = matriz505, file = "03_Output/simulacion_1/50spp5/matriz")

condiciones50sim5 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 50)
write.csv(x = condiciones50sim5, file = "03_Output/simulacion_1/50spp5/InCn")

sims100art5 <- simulaciones(numero_species= number_species5, iniciales = condiciones50sim5, pvalor = p5, 
                            temps = tempss5, energia = energiact5, morte = muert5, matriz = matriz505, 
                            tiempo= times505, directorio = directorio50_5, nombre = nombre50_5)


# 100spp3.1 (mismos valores que 50spp3 pero con 100 spp)
number_species3 <- 100
p3 <- 0.8
tempss3 <- 278:298
energiact3 <-0.33
matriz503 <- rnorm(number_species3*number_species3, 0.08, 0.04)
matriz503 <-matrix(matriz503, nrow = number_species3)
muert3 <- rep(0.07, number_species3)
times503 <- seq(0, 1000, by = 0.1)
directorio50_3 <- "03_Output/simulacion_1/4_100spp3.1/"
nombre50_3 <- "_p08_m007_e033_50spp"
write.csv(x = matriz503, file = "03_Output/simulacion_1/4_100spp3.1/matriz")

condiciones50sim3 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 100)
write.csv(x = condiciones50sim3, file = "03_Output/simulacion_1/4_100spp3.1/InCn")

sims100art3 <- simulaciones(numero_species= number_species3, iniciales = condiciones50sim3, pvalor = p3, 
                            temps = tempss3, energia = energiact3, morte = muert3, matriz = matriz503, 
                            tiempo= times503, directorio = directorio50_3, nombre = nombre50_3)

# 100spp4.1 (mismos valores que 50spp3 pero con 100 spp)
number_species4 <- 100
p4 <- 0.8
tempss4 <- 278:298
energiact4 <-0.33
matriz504 <- rnorm(number_species4*number_species4, 0.16, 0.08)
matriz504 <-matrix(matriz504, nrow = number_species4)
muert4 <- rep(0.07, number_species4)
times504 <- seq(0, 1500, by = 0.1)

directorio50_4 <- "03_Output/simulacion_1/6_100spp4.1/"
nombre50_4 <- "_p08_m007_e033_100spp"
write.csv(x = matriz504, file = "03_Output/simulacion_1/6_100spp4.1/matriz")

condiciones50sim4 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 100)
write.csv(x = condiciones50sim4, file = "03_Output/simulacion_1/6_100spp4.1/InCn")

sims100art4 <- simulaciones(numero_species= number_species4, iniciales = condiciones50sim4, pvalor = p4, 
                            temps = tempss4, energia = energiact4, morte = muert4, matriz = matriz504, 
                            tiempo= times504, directorio = directorio50_4, nombre = nombre50_4)

# 100spp5.1 
number_species5 <- 100
p5 <- 0.8
tempss5 <- 278:298
energiact5 <-0.33
matriz505 <- rnorm(number_species5*number_species5, 0.64, 0.32)
matriz505 <-matrix(matriz505, nrow = number_species5)
muert5 <- rep(0.07, number_species5)
times505 <- seq(0, 1000, by = 0.1)
directorio50_5 <- "03_Output/simulacion_1/8_100spp5.1/"
nombre50_5 <- "_p08_m007_e033_50spp"
write.csv(x = matriz505, file = "03_Output/simulacion_1/8_100spp5.1/matriz")

condiciones50sim5 <- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 100)
write.csv(x = condiciones50sim5, file = "03_Output/simulacion_1/8_100spp5.1/InCn")

sims100art5 <- simulaciones(numero_species= number_species5, iniciales = condiciones50sim5, pvalor = p5, 
                            temps = tempss5, energia = energiact5, morte = muert5, matriz = matriz505, 
                            tiempo= times505, directorio = directorio50_5, nombre = nombre50_5)

# 2as simulaciones articulo 
# 9_ 4 spp 
number_species <- 4
p9 <- 0.8
tempss9 <- 278:298
energiact9 <-0.33
matriz9 <- rnorm(number_species9*number_species9, 0.3, 0.15)
matriz9 <-matrix(matriz9, nrow = number_species9)
muert9 <- rep(0.07, number_species9)
times9 <- seq(0, 1000, by = 0.1)
directorio9 <- "03_Output/simulacion_1/9_4spp/"
nombre9 <- "_p08_m007_e033_4spp"
write.csv(x = matriz9, file = "03_Output/simulacion_1/9_4spp/matriz")

condiciones9<- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 4)
write.csv(x = condiciones9, file = "03_Output/simulacion_1/9_4spp/InCn")

sims9 <- simulaciones(numero_species= number_species9, iniciales = condiciones9, pvalor = p9, 
                            temps = tempss9, energia = energiact9, morte = muert9, matriz = matriz9, 
                            tiempo= times9, directorio = directorio9, nombre = nombre9)

# 10_ 20 spp 
number_species <- 20
p10 <- 0.8
tempss10 <- 278:298
energiact10 <-0.33
matriz10 <- rnorm(number_species*number_species, 0.6, 0.3)
matriz10 <-matrix(matriz10, nrow = number_species)
muert10 <- rep(0.07, number_species)
times10 <- seq(0, 1000, by = 0.1)
directorio10 <- "03_Output/simulacion_1/10_20spp/"
nombre10 <- "_p08_m007_e033_20spp"
write.csv(x = matriz10, file = "03_Output/simulacion_1/10_20spp/matriz")

condiciones10<- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 20)
write.csv(x = condiciones10, file = "03_Output/simulacion_1/10_20spp/InCn")

sims10 <- simulaciones(numero_species= number_species, iniciales = condiciones10, pvalor = p10, 
                      temps = tempss10, energia = energiact10, morte = muert10, matriz = matriz10, 
                      tiempo= times10, directorio = directorio10, nombre = nombre10)


# 11_ 4 spp 
number_species <- 80
p11 <- 0.8
tempss11 <- 278:298
energiact11 <-0.33
matriz11 <- rnorm(number_species*number_species, 2.4, 1.2)
matriz11 <-matrix(matriz11, nrow = number_species)
muert11 <- rep(0.07, number_species)
times11 <- seq(0, 1100, by = 0.1)
directorio11 <- "03_Output/simulacion_1/11_80spp/"
nombre11 <- "_p08_m007_e033_80spp"
write.csv(x = matriz11, file = "03_Output/simulacion_1/11_80spp/matriz")

condiciones11<- condiciones_iniciales(nsimulaciones = 1:10, nspecies = 80)
write.csv(x = condiciones11, file = "03_Output/simulacion_1/11_80spp/InCn")

sims11 <- simulaciones(numero_species= number_species, iniciales = condiciones11, pvalor = p11, 
                       temps = tempss11, energia = energiact11, morte = muert11, matriz = matriz11, 
                       tiempo= times11, directorio = directorio11, nombre = nombre11)