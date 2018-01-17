library(leaflet)
# install.packages("leaflet")

map <- leaflet(width = 400, height = 200) %>%  # creacion de la caja, ancho y alto
        addTiles() %>%   # añadidos
        addMarkers(lng = 123.251,      # seleccionamos coordenadas
                   lat = 49.263,        
                   popup = "you are here")

map

# primer mapa creado con la libreria leaflet; voy a probar metiendo unas coordenadas de un aeropuerto al azar
map1 <- leaflet(width = 400, height = 200) %>%
        addTiles() %>%
        addMarkers(lng = c(75.4404, -84.42694),
                   lat = c(40.65236, 33.64044))

map1


# There are an enormous number of publically available tile layers for you to use.
# You can check out Leaflet Providers for a pretty exhaustive list
maptypes <- c("MapQuestOpen.Aerial",
              "Stamen.TerrainBackground",
              "Esri.WorldImagery",
              "OpenStreetMap",
              "Stamen.Watercolor")

# Change the index to see what the different tile-sets look like:
# Now we're into the magrittr formatting.  We're using "Provider" tiles here,
# not the default (OpenStreetMap) Tiles:

map <- leaflet() %>% 
  addProviderTiles(maptypes[5])  # el 3 mola mucho!!!
