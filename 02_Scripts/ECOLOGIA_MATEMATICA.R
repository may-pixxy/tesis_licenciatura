# CLASE ROBERTO 
# ECOLOGIA MATEMATICA 

# Modelos lotka volterra 
# Primera parte del curso 4 clases de moelos que se han utilizpado para dinamica de comunidades
# bacterianas 


# Lotka volterra - describ poblaciones de bacterias 
# Generalized consumer resource (MacArthur consumicores-recursos)
# Modelos basados en rasgos, donde podemos modificar factores como T° 
# Modelos basados en agentes individuales
# Modelos metabolicos a escala genomica - matrices asociadas a reacciones quimica 

# Temperatura en algunos casos uede ser favorecedor o desfavo 
# por lo que impacta directamente en la tasa de crecimiento 


##################
#### Modelos lotka volterra generalizados ####
# generalizado al menos en dos sentidos 
# 1. vamos a tratar mas de dos entidades(no tienen que ser necesariamente especies)
# 2. involucra una relacion positiva, negativa-vamos a considerar entonces todas las parejas posibles de signos 
# alfa es una matriz que esencialente contiene las interacciones 

# ecuacion 
# Bi ((r_i + E(suma) a_ij*Bj)- m_i)

# primer termino 
# B_i= r_i*B_i 
# tasa de crecimiento * abundancia de la poblacion 


# Segundo termino 
# mi*Bi
# tasa de muerte 

# Tercer termino 
# Bi*aij
# aqui lo que tenemos es interaccion de spp i con especie j 
# esta sumado 
# Bi(SUMA)*aij*Bj 
# interaccion de j sobre i 
# interaccion de Bi por todas las demas 
# Basicamente es el efecto de las interacciones sobre i 


# principio de excl competitiva - la mayoria de spp que interaccionan 
# es por competencia pero es antintuitivo, si solo competieran por recursos 
# entonces realmente solo una ganaria y tendriamos una sola spp o menor 
# diversidad 

#### Se puede predecir por pares?? ####
# Podemos reconstruir un consorcio a trabes de la pareja de interacciones
# aislaron 8 spps bacterianas heterotrofas y las pusieron a competir 
# les interesaba el resultado de la coexistencia 
# haciendo el ejercicio vieron por parejas quien excluye a quien 
# y en base a eso que hicieron? pudieron determinar "si pongo las 3 especies al mismo
# tiempo en el mismo medio quien va asobrevivir o como va a ser la coexistencia?"
# hicieorn 28 experimentos y luego hicieron los experimentos por tripletes para 
# ver si podian inferir reglas. Buscaron escalarlo para poder predecir la composicion 
# bacteriana 

# A que llegaron?
# Grafica 
# exclusion -- las lineas d ela grafica se inclinan hacia una de las dos epseices 
# coexistencia- las lineas que se generan de abundancias coexisten, rondan los mismos rangos 


# si tenemos 3 poblaciones se pueden poner en un triangulo equilatero y podemos ver como se da
# la interaccion entre estas 
# triangulo -- depediendo de donde este
# si las 3 estan coexistiendo entonces el punto esta en medio/en algun lugar 
# dependiendo de donde se encuentre el punto en el triangulo podemos leerlo distinto 
# si esta sobre alguna de las aristas (las lineas del traingulo) entonces quiere decir que 
# solo coexisten 2 especies, ahora si el punto se encuentra mas inclinado hacia uno de 
# los dos puntos entonces eso nos indica que tan abundante es cada una de las especies 

# Si solo existe una especie entonces el punto esta sobre la esquina del triangulo (siendo
# esta esquina la especie en cuestion)

# linea roja - exclusion
# linea azul - coexistencia 
# el hecho de que a excluya a c y a con b y bc coexistan lleva a que 
# c se excluya 

# r en monocultivo es buen predictor de que tan buen competidor es 
# podemos ir armandp reglas en el sentido de que aquellas que coexisten van a persisitir 

# Otra cosa que obtuvieron 
# community structure follows simple assembly # https://doi.org/10.1038/s41559-017-0109 #

# compararon con un modelo nulo -- regido por el azar 
# lotka volterra es un modelo no lineal 
# x = ax - bxy  # presa
# y = -cy + dxy 3 depredador
# da oscilaciones sostenidas, es un modelo presa-depredador 
# los que son muy sensibles a destruirse cuando te alejas son los centros
# si varias poquito 
# si sale un centro en un sistema no lineal hay que tener mucho cuidado 
# sobretodo en el modelo generalizado, si salen cosas que son oscilatorias 
# hay que tener mucho cuidado 

# exposicion paper victor 
# equilibrio alternativo -- diferente al equilibrio inicial del sistema
# y eso sucede cuando hay alteraciones en el sistema 
# valles corresponden al momento en que el sistema alcanza menor 
# equilibrio alternativo es como si el sistema cambiara de una cuenca a otra 
# 


# falte a la clase siguiente (manzanillo)
# NOTAS UMU 


# CLASE 11 ABRIL DE 2024 ####
# Ecologia matematica 
# Limitaciones del modelo LV-G 
#int estaticas en tiempo y espacio -- cambios no se reflejan en el modelo 
# en spp macro es dificil que cambien (ej. interacciones presa-depredador)
# ciclos de retroalim positiv conducen aq ue la poblacion crezca sin control 
# la dinamica esta gobernada solo x int por pares
# no toma en cuenta procesos estocasticos (deriva genica o fluctuaciones ambientales)

# pese a las limitaciones...
# podemos superarlas 
# poner mas parametros 
# 1. funciones de saturacion para modelar escenarios mutualis
# 2. el signo efectivo de int podria viajar 

# que podemos obtener de estos modelos?
# entendimiento grosso modo cusndo no se pueden medir rasgos de las spp 
# este modelo y sus adaptaciones modelan div de comunidad, coexistencia 
# 


# LOTKA VOLTERRA
dx(t()) = D((x(t)) (r+Ax(t)))
# x(t) <- va a ser vector que contiene a todas las poblaciones 
# es decir x1(t), x2(t)
# en lugar de poner n ecuaciones podemos poner como cambia el vector de todas 
# las poblaciones, para derivar vectores vamos termino por termino 

# r no es solo escalar, es vector y tiene tasas de crecimiento de todas las poblaciones

# A <- matriz de interaccion, sin subindices porque es toda la matriz de interaccion 
# D <- diagonal 
# A*x <- matriz * vector de valores de la poblacion, (a11*x1 + a12*x2 + a13*x3) 
# todo eso ira multiplicado por x(t) entonces xn(a11*x1 + a12*x2 + a13*x3)

# lineas punteadas en la diapo, abundancias oscilan alrededor del punto de equilibrio 


# ventaja de haber puesto expresion de forma matricial 
# que podemos poner los resultados de forma matricial 

# r +Ax ] tasas de crecim + Ax 
# Ax* = -r 
# x* = -A^-1*r (matriz inversa * r)
# queremos encontrar X*, los valores de la poblacion que hacen que esto ya no cambie 
# que si quiero encontrar puntos de equilibrio 
# insumos de la funcion, r e interacciones 
# si ponemos -r * matriz inversa en r podemos encontrar puntos de equilibrio 
# que son los valores de poblacion en las que van a estar oscilando la abundancia
# para calcular la estabilidad que tenemos que hacer 
# en este cao por ejemplo los puntos de equilibrio como se muestra en la grafica
# son pubntos donde la abundancia va a estar oscilando y por tanto podemos decir 
# que los valores de estabiidad, los eigenvalores van a tener una parte real y una 
# imaginaria, lo que indica la oscilacion 

 ############# NOTAS CLASE DONDE EXPUSE ####
# Mando todo al slack 

# Lotka volterra en forma vectorial 
# Diagonal(x)(r + Ax)
# esta formula nos ayudaria a encontrar resultados en coexistencia 
# con esa opción exploramos escenarios de coexistencia 
# como se lee 

# D(x) = es una matriz diagonal que en la diagonal tiene elementos distintos de cero 
# matriz diagonal de las abundancias, va a tener abundancias en la diagonal 
# x <- x1, x2, x3, x4 
# r <- vector columna con todas las abundancias 
# matriz de interacciones, matriz del efecto por renglones vamos a tener interacciones
# de cada especie con las demas 
# r + Ax 
# vector r + A matriz de interacciones + vector x 
# 

# cuando encontramos relaciones de coexistencia - normalmente cuando 
# cuando encontramos puntos de equilibrio si los hubiera 
# de la forma habitual, cuando la derivada vale 0 
# si vale 9 entonces... {}
# D(X)(R+Ax) <- si resolvemos esto tendremos todos los valores de coexistencia 

# Encontrar X1 y x2 y luego demostrar que se puede escribir de la otra manera 


# solve (A2 matriz, r2 son las spps)
# que hace? --> podemos encontrar la solucion 
# nos sirve para checar que todas las soluciones son positivas lo que nos dice que 
# que es una solución viable 
# integrate_glv()

# no necesita de mucho tiempo de computo 
# a partir de 3 spps en LV existe algo que se llama ciclos limites
# que es como los centros, los puntos se encuentran oscilando alrededor de su 
# punto de equilibrio 
# pueden oscilar de forma estabke o inestable, estable - oscilan, la oscilación
# van en espiral, hasta llegar al punto de equilibrio, tienen parte real negativa y 
# la parte imaginaria 
# para 4 o + podemos tener escenarios caoticos, podemos tener estructuras que 
# pueden moverse 
# caotico, podemos empezar en condiciones iniciales muy cerquita pero los valores
# van a diverger en algun punto y entonces se ve caotico 
# 

# hay que garabntizar que todas los valores que arroja solve sean positivas 
# eso garantizaria coexistencia, no pueden ser valores de 0 o negativos 
# porque entonces NO es correcto 
# 

# Si queremos mocelar 100 spps necesitamos matrices estocasticas
# matrices estocasticas --> aleatorias 
# diagrama circulo con puntitos 
# linea roja es el 0, los numeros al lado derecho son inestables 
# porque tienen valores positivos en eje x 
# los valores que estan en el lado izq correpsonden a escenarios 
# deinestabilidad 
# EJE Y es la parte imaginaria eje X es la parte real 
# de lee x-y 
# para matrices aleatorias estan en un circulo 
# valores mas cercanos al cero quiere decir que tardan mas en llegar al 
# punto de equilibro. mientras mas cerca de la parte externa del circulo 
# Podriamos meter una matriz que no sea uniforme, se sabe que la mayoria de 
# las especies interaccionan negativamente entonces estaria bueno 
# en lugar de una matriz uniforme que sea random o con media distinta 
# diametro del circulo tiene que ver 

