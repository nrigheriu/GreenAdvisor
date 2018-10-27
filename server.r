

shinyServer(function(input, output, session){
  
  points <- eventReactive(input$recalc, {
    cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
  }, ignoreNULL = FALSE)
  
  output$mymap <- renderLeaflet({
    m <- leaflet() %>% setView(lng = -3.69087, lat = 40.42093, zoom = 12)
    m %>% addTiles()
  })
}
  )