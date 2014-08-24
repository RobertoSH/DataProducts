shinyServer(function(input, output) {
  load('database.RData')
  source('project.R')
  
  
#   Project(Variables = input$Variables ,
#           min = input$Range[1],
#           max = input$Range[2],
#           Flavor = input$Flavor,
#           Appearance = input$Appearance,
#           Smell = input$Smell)
    
  
  output$TreePlot<-renderPlot({
    Project(Variables = input$Variables ,
            min = input$Range[1],
            max = input$Range[2],
            Flavor = input$Flavor,
            Appearance = input$Appearance,
            Smell = input$Smell)
    
    plot(Tree)
  })


output$Importance<-renderTable({
  Project(Variables = input$Variables ,
          min = input$Range[1],
          max = input$Range[2],
          Flavor = input$Flavor,
          Appearance = input$Appearance,
          Smell = input$Smell)
  
  as.data.frame(Importance)
})


output$Prediction<-renderTable({
  Project(Variables = input$Variables ,
          min = input$Range[1],
          max = input$Range[2],
          Flavor = input$Flavor,
          Appearance = input$Appearance,
          Smell = input$Smell)
      as.data.frame(Prediction)
    })
  
  
})

