library(leaflet)
# install.packages("leaflet")

map <- leaflet(width = 400, height = 200) %>%
        addTiles() %>%
        addMarkers(lng = 123.251,
                   lat = 49.263,
                   popup = "you are here")

map
# primer mapa creado con la libreria leaflet; voy a probar metiendo unas coordenadas de un aeropuerto al azar

map1 <- leaflet(width = 400, height = 200) %>%
        addTiles() %>%
        addMarkers(lng = c(75.4404, -84.42694),
                   lat = c(40.65236, 33.64044))

map1
