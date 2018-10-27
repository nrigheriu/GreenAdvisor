ui <- fluidPage(
  titlePanel("Valorar"),
  sidebarPanel(
    selectInput("name", "restaurante", choices = restaurantlist),
    selectInput("nota", "nota", c("1","2","3","4","5")),
    actionButton("save", "Add")
  ),
  mainPanel(
    
    mainPanel(leafletOutput("mymap",height = 750, width=750))
    
  )
)
