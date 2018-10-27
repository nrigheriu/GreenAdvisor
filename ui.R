shinyUI(fluidPage(id = "main",
                  leafletOutput("mymap"),
                  p(),
                  actionButton("recalc", "New points")
                  
))