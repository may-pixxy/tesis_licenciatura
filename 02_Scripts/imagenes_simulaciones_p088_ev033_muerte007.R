# IMAGENES 7 SPP # 
library(png)

?readPNG
im282_1 <-readPNG(source = "03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp1.png")
im282_2 <- readPNG(source = "03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp2.png")
im282_5 <- readPNG(source = "03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp5.png")
im282_9 <- readPNG(source = "03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp9.png")
im282_10 <- readPNG(source = "03_Output/simulacion_p08_ev033_muerte007/282/7spp/282_p08_m007_e033_7spp10.png")

plot(NA, xlim = c(0, 2), ylim = c(0, 2), type = "n", xaxt = "n", yaxt = "n", xlab = "", ylab = "")
rasterImage(im282_1, 0, 1, 1, 2)
rasterImage(im282_2, 1, 1, 2, 2)
rasterImage(im282_5, 0, 0, 1, 1)
rasterImage(im282_10, 1, 0, 2, 1)

im286_1 
im286_2 
im286_7 
im286_8
im286_10 

im286_1 
im286_2 
im286_7 
im286_8 
im286_10

im290_1
im290_2
im290_4
im290_6
im290_9

im294_2
im294_5
im294_6
im294_8
im294_10

im298_1
im298_2
im298_6
im298_7
im298_10
