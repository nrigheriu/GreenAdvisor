shinyServer(function(input, output, session){
  saveData<-function(data){
    #data <- as.data.frame(t(data))
    df$evaluations[df$basicData.name == data$name]<-df$evaluations[df$basicData.name == data$name] +1
    df$grade[df$basicData.name == data$name]<-df$grade[df$basicData.name == data$name]+data$nota
    
  }
  formData <- reactive({
    data <- sapply(fields)
    data
  })
  observeEvent( input$save,{
    saveData(formData)
  })
  output$mymap <- renderLeaflet({
    leaflet() %>%
      addProviderTiles(providers$Stamen.TonerLite,
                       options = providerTileOptions(noWrap = TRUE)
      ) %>%
      addMarkers(lng = df$geoData.longitude, lat = df$geoData.latitude)
  })
}
)
