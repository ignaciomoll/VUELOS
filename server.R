library(shiny)
library(leaflet)


server <- shinyServer(function(input, output) {
  
  output$Map <- renderLeaflet({
    leaflet() %>%
      addProviderTiles("Esri.WorldImagery") %>%
      setView(lat = 37.681918,
              lng = 97.368171,
              zoom = 4)
  })
})  