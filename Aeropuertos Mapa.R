# vamos a descargarnos el dataset de aeropuertos que es más pequeño y jugueter con el, despues intentaré implementarlo
# en shiny y por último en el proyecto final con el dataset correcto

aeropuertos <- read.csv("airports.csv")
summary(aeropuertos)
# haciendo un brebe análisis de las variables, tenemos Iata_CODE y nombre del aeropuerto, (origen,destino),
# estado, ciudad y coordenadas (latitud y longitud)

# quitamos los valores perdidos NA, sólo hay tres en latitud y longitud
aeropuertos <- na.omit(aeropuertos)

plot(LATITUDE ~ LONGITUDE, 
     data = aeropuertos)
# nos hacemos una idea de donde están los aeropuertos, los propios puntos han hecho el mapa de EEUU.


# Agregamos la ventana emergente para poder hacer clic y ver qué sitio estoy buscando.

map <- leaflet() %>% 
  addProviderTiles("Esri.WorldImagery") %>% 
  addMarkers(lat = aeropuertos$LATITUDE, 
             lng = aeropuertos$LONGITUDE,
             clusterOptions = markerClusterOptions(),
             popup = as.character(aeropuertos$AIRPORT)) # te permite pulsar los puntos de mapa y te dice el nombre del aeropuerto

map
# aparecen aeropuertos, no sólo en EEUU sino también en Canada, por lo tanto es de Norte América entero, lo de los 
# cluster sirve para ver el numero de aeropuertos en un áerea predeterminada, vemos como en EEUU hay 293 y el resto
# hasta 319 están en Canda.
# Puedes ir pulsando los cluster y se va acercando y dividiendo a su vez en más cluster hasta quedar un único aeropuerto



