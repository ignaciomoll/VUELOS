library(leaflet)
# install.packages("leaflet")

map <- leaflet(width = 400, height = 200) %>%
        addTiles() %>%
        addMarkers(lng = 123.251,
                   lat = 49.263,
                   popup = "you are here")

map
