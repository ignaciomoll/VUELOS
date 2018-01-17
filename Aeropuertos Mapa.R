# vamos a descargarnos el dataset de aeropuertos que es más pequeño y jugueter con el, despues intentaré implementarlo
# en shiny y por último en el proyecto final con el dataset correcto

aeropuertos <- read.csv("airports.csv")
# haciendo un brebe análisis de las variables, tenemos Iata_CODE y nombre del aeropuerto, (origen,destino),
# estado, ciudad y coordenadas (latitud y longitud), no hay valores perdidos, podemos trabajar con el

plot(LATITUDE ~ LONGITUDE, 
     data = aeropuertos)
# nos hacemos una idea de donde están los aeropuertos, los propios puntos han hecho el mapa de EEUU.

