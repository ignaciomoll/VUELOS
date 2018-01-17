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
                   lat = c(40.65236, -33.64044))

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
<<<<<<< HEAD

# como fijar punto de "salida" (setView)

map2 <- leaflet(width = 500, height = 400) %>%
        addTiles() %>%
  setView(lng = -123.251,
          lat = 49.263,
          zoom = 6)  # el zoomes lo cerca que queremos empezar
# IDEA: No es necesario buscar un mapa de estados unidos, podemos emplear el 3 de arriba y ubicarlo con las 
# coordenadas del primer aeropuerto y con un zoom con el que sólo se vea EEUU y empezar desde ahí

# Prueba: cogemos un estado que este centrado para que sea más fácil con el zoom atinar a todo el mapa,
# cogemos kansas o alguno de alrededor (Oklahoma, Misuri, Iowa.....)
# finalmente coordenadas de Wichita, Kansas (37.681918, -97.368171)

mapPrueba <- leaflet(width = 525, height = 500) %>%
            addTiles() %>%
            addProviderTiles(maptypes[3]) %>%
            setView(lng = -97.368171,
                    lat = 37.681918,
                    zoom = 4)

mapPrueba
# finalmente ha salido el resultado esperado, tipo de mapa tres, con parecido ancho y alto, eso cuando pase a shiny
# tendre que ir modificandolo, con zoom 4 sale EEUU o mejor dicho Norte America, las coordenadas de Wichita sirven.
=======
>>>>>>> 628ec7c8a97352a3ac35ab4091d9a217d9f1f948
