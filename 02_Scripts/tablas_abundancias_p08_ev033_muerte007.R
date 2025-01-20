# Generar tablas de abundancias 

#### FUNCION PARA CAMBIAR LOS VALORES INFIMOS EN LA MATRIZ ####
change_to_zero <- function (tabla){
  tabla[tabla <= 1e-6] <- 0
  tabla <- as.data.frame(tabla)
  tabla <- sapply(tabla, as.numeric)
  
  resultados_tabla <- t(tabla)
  return(resultados_tabla)
}

#### TABLA PARA 7 SPP ####

# 1. Cambiar todos los valores de la matriz que son negativos o cercanos a 0 a 0 

tabla278_7spp_zero <- change_to_zero(tabla278_7spp)
tabla279_7spp_zero <- change_to_zero(tabla279_7spp)
tabla280_7spp_zero <- change_to_zero(tabla280_7spp)
tabla281_7spp_zero <- change_to_zero(tabla281_7spp)
tabla282_7spp_zero <- change_to_zero(tabla282_7spp)
tabla283_7spp_zero <- change_to_zero(tabla283_7spp)
tabla284_7spp_zero <- change_to_zero(tabla284_7spp)
tabla285_7spp_zero <- change_to_zero(tabla285_7spp)
tabla286_7spp_zero <- change_to_zero(tabla286_7spp)
tabla287_7spp_zero <- change_to_zero(tabla287_7spp)
tabla288_7spp_zero <- change_to_zero(tabla288_7spp)
tabla289_7spp_zero <- change_to_zero(tabla289_7spp)
tabla290_7spp_zero <- change_to_zero(tabla290_7spp)
tabla291_7spp_zero <- change_to_zero(tabla291_7spp)
tabla292_7spp_zero <- change_to_zero(tabla292_7spp)
tabla293_7spp_zero <- change_to_zero(tabla293_7spp)
tabla294_7spp_zero <- change_to_zero(tabla294_7spp)
tabla295_7spp_zero <- change_to_zero(tabla295_7spp)
tabla296_7spp_zero <- change_to_zero(tabla296_7spp)
tabla297_7spp_zero <- change_to_zero(tabla297_7spp)
tabla298_7spp_zero <- change_to_zero(tabla298_7spp)

tablas7spp <- list(tabla278_7spp_zero, tabla279_7spp_zero, tabla280_7spp_zero, tabla281_7spp_zero,
                   tabla282_7spp_zero, tabla283_7spp_zero, tabla284_7spp_zero, tabla285_7spp_zero,
                   tabla286_7spp_zero, tabla287_7spp_zero, tabla288_7spp_zero, tabla289_7spp_zero, 
                   tabla290_7spp_zero, tabla291_7spp_zero, tabla292_7spp_zero, tabla293_7spp_zero,
                   tabla294_7spp_zero, tabla295_7spp_zero, tabla296_7spp_zero, tabla297_7spp_zero,
                   tabla298_7spp_zero)

write.csv(tablas7spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/tablas_abundancias_7spp") 


#### TABLA PARA 20 SPP ####
tabla278_20spp_zero <- change_to_zero(tabla278_20spp)
tabla279_20spp_zero <- change_to_zero(tabla279_20spp)
tabla280_20spp_zero <- change_to_zero(tabla280_20spp)
tabla281_20spp_zero <- change_to_zero(tabla281_20spp)
tabla282_20spp_zero <- change_to_zero(tabla282_20spp)
tabla283_20spp_zero <- change_to_zero(tabla283_20spp)
tabla284_20spp_zero <- change_to_zero(tabla284_20spp)
tabla285_20spp_zero <- change_to_zero(tabla285_20spp)
tabla286_20spp_zero <- change_to_zero(tabla286_20spp)
tabla287_20spp_zero <- change_to_zero(tabla287_20spp)
tabla288_20spp_zero <- change_to_zero(tabla288_20spp)
tabla289_20spp_zero <- change_to_zero(tabla289_20spp)
tabla290_20spp_zero <- change_to_zero(tabla290_20spp)
tabla291_20spp_zero <- change_to_zero(tabla291_20spp)
tabla292_20spp_zero <- change_to_zero(tabla292_20spp)
tabla293_20spp_zero <- change_to_zero(tabla293_20spp)
tabla294_20spp_zero <- change_to_zero(tabla294_20spp)
tabla295_20spp_zero <- change_to_zero(tabla295_20spp)
tabla296_20spp_zero <- change_to_zero(tabla296_20spp)
tabla297_20spp_zero <- change_to_zero(tabla297_20spp)
tabla298_20spp_zero <- change_to_zero(tabla298_20spp)

tablas20spp <- list(tabla278_20spp_zero, tabla279_20spp_zero, tabla280_20spp_zero, tabla281_20spp_zero,
                    tabla282_20spp_zero, tabla283_20spp_zero, tabla284_20spp_zero, tabla285_20spp_zero,
                    tabla286_20spp_zero, tabla287_20spp_zero, tabla288_20spp_zero, tabla289_20spp_zero, 
                    tabla290_20spp_zero, tabla291_20spp_zero, tabla292_20spp_zero, tabla293_20spp_zero,
                    tabla294_20spp_zero, tabla295_20spp_zero, tabla296_20spp_zero, tabla297_20spp_zero,
                    tabla298_20spp_zero)

write.csv(tablas20spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/tablas_abundancias_20spp") 

#### TABLA PARA 50 SPP ####
tabla278_50spp_zero <- change_to_zero(tabla278_50spp)
tabla279_50spp_zero <- change_to_zero(tabla279_50spp)
tabla280_50spp_zero <- change_to_zero(tabla280_50spp)
tabla281_50spp_zero <- change_to_zero(tabla281_50spp)
tabla282_50spp_zero <- change_to_zero(tabla282_50spp)
tabla283_50spp_zero <- change_to_zero(tabla283_50spp)
tabla284_50spp_zero <- change_to_zero(tabla284_50spp)
tabla285_50spp_zero <- change_to_zero(tabla285_50spp)
tabla286_50spp_zero <- change_to_zero(tabla286_50spp)
tabla287_50spp_zero <- change_to_zero(tabla287_50spp)
tabla288_50spp_zero <- change_to_zero(tabla288_50spp)
tabla289_50spp_zero <- change_to_zero(tabla289_50spp)
tabla290_50spp_zero <- change_to_zero(tabla290_50spp)
tabla291_50spp_zero <- change_to_zero(tabla291_50spp)
tabla292_50spp_zero <- change_to_zero(tabla292_50spp)
tabla293_50spp_zero <- change_to_zero(tabla293_50spp)
tabla294_50spp_zero <- change_to_zero(tabla294_50spp)
tabla295_50spp_zero <- change_to_zero(tabla295_50spp)
tabla296_50spp_zero <- change_to_zero(tabla296_50spp)
tabla297_50spp_zero <- change_to_zero(tabla297_50spp)
tabla298_50spp_zero <- change_to_zero(tabla298_50spp)

tablas50spp <- list(tabla278_50spp_zero, tabla279_50spp_zero, tabla280_50spp_zero, tabla281_50spp_zero,
                    tabla282_50spp_zero, tabla283_50spp_zero, tabla284_50spp_zero, tabla285_50spp_zero,
                    tabla286_50spp_zero, tabla287_50spp_zero, tabla288_50spp_zero, tabla289_50spp_zero, 
                    tabla290_50spp_zero, tabla291_50spp_zero, tabla292_50spp_zero, tabla293_50spp_zero,
                    tabla294_50spp_zero, tabla295_50spp_zero, tabla296_50spp_zero, tabla297_50spp_zero,
                    tabla298_50spp_zero)


write.csv(tablas50spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/tablas_abundancias_50spp")

#### TABLA PARA 100 SPP ####
tabla278_100spp_zero <- change_to_zero(tabla278_100spp)
tabla279_100spp_zero <- change_to_zero(tabla279_100spp)
tabla280_100spp_zero <- change_to_zero(tabla280_100spp)
tabla281_100spp_zero <- change_to_zero(tabla281_100spp)
tabla282_100spp_zero <- change_to_zero(tabla282_100spp)
tabla283_100spp_zero <- change_to_zero(tabla283_100spp)
tabla284_100spp_zero <- change_to_zero(tabla284_100spp)
tabla285_100spp_zero <- change_to_zero(tabla285_100spp)
tabla286_100spp_zero <- change_to_zero(tabla286_100spp)
tabla287_100spp_zero <- change_to_zero(tabla287_100spp)
tabla288_100spp_zero <- change_to_zero(tabla288_100spp)
tabla289_100spp_zero <- change_to_zero(tabla289_100spp)
tabla290_100spp_zero <- change_to_zero(tabla290_100spp)
tabla291_100spp_zero <- change_to_zero(tabla291_100spp)
tabla292_100spp_zero <- change_to_zero(tabla292_100spp)
tabla293_100spp_zero <- change_to_zero(tabla293_100spp)
tabla294_100spp_zero <- change_to_zero(tabla294_100spp)
tabla295_100spp_zero <- change_to_zero(tabla295_100spp)
tabla296_100spp_zero <- change_to_zero(tabla296_100spp)
tabla297_100spp_zero <- change_to_zero(tabla297_100spp)
tabla298_100spp_zero <- change_to_zero(tabla298_100spp)

tablas100spp <- list(tabla278_100spp_zero, tabla279_100spp_zero, tabla280_100spp_zero, tabla281_100spp_zero,
                     tabla282_100spp_zero, tabla283_100spp_zero, tabla284_100spp_zero, tabla285_100spp_zero,
                     tabla286_100spp_zero, tabla287_100spp_zero, tabla288_100spp_zero, tabla289_100spp_zero, 
                     tabla290_100spp_zero, tabla291_100spp_zero, tabla292_100spp_zero, tabla293_100spp_zero,
                     tabla294_100spp_zero, tabla295_100spp_zero, tabla296_100spp_zero, tabla297_100spp_zero,
                     tabla298_100spp_zero)


write.csv(tablas100spp, "03_Output/simulacion_p08_ev033_muerte007_tablas/tablas_abundancias_100spp") 