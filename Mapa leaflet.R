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

# Once a map is made we often want to add some sort of marker or object on top of the map. 
# We could add someting like a marker, or a line. These functions all follow the add*() format, 
# including addMarkers, addPopups, addCircleMarkers, addCircles and others.
# 
# Here we're going to add a Marker and a CircleMarker. Markers are pretty useful, 
# the "points" of the leaflet universe. We can modify the Marker further using its options parameter. 
# The options accept a set of different markerOptions that allow you to drag, click, and hover over the markers:
map <- leaflet() %>% 
  addProviderTiles("Esri.WorldImagery") %>% # el mapa es tipo ciudad , viendose las casas, no me sirve
  addMarkers(lng = -123.251,  # con addMarkers seleccionas un punto, quizás necesite dos, origen y destino.
             lat = 49.263, 
             popup = "You are here.", # cuando pulsas sobre el icno te dice tu estas aquí, interesante para mi shiny
             options = markerOptions(draggable = TRUE, riseOnHover = TRUE)) %>%
  addCircleMarkers(lng = -123.261, # otro tipo de agregar un punto, siendo el circulo de forma diferente, me gusta 
                   lat = 49.273,     # mas el primero.
                   popup = "You aren't here.",
                   fillColor= "red", opacity = 1,
                   options = markerOptions(draggable = FALSE, title = "Whoops")) %>%
  setView(lng = -123.251,
          lat = 49.263,
          zoom = 13)

