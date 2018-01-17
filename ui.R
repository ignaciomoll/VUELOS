# vamos a probar lo anterior en shiny, haber que sucede y que se puede mejorar....

library(shiny)
library(leaflet)

ui <- shinyUI(
  fluidPage(
    titlePanel("VuelosSencillo"),
    leafletOutput("Map")
    
  )
)