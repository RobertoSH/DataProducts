shinyUI(fluidPage(
  
  
sidebarPanel( 
  
  # Copy the chunk below to make a group of checkboxes
  
  checkboxGroupInput("Variables", label = h3("Noise in Variables"), 
                     choices = list("Flavor" = "Flavor",
                                    "Apperance" = "Apperance",
                                    "Smell" = "Smell")),
  
  sliderInput('Range',label = h3("Uniform Range"),min = -4,max = 4,value = c(-1,1),step = 1),
  
  sliderInput('Flavor',label = h3("Flavor"),min = 1,max = 7,value = c(1),step = 1),
  
  sliderInput('Appearance',label = h3("Appearance"),min = 1,max = 7,value = c(1),step = 1),
  
  sliderInput('Smell',label = h3("Smell"),min = 1,max = 7,value = c(1),step = 1)
  
  
#   hr(),
#   fluidRow(column(3, verbatimTextOutput("Variables")))  ,


# actionButton("goButton", "Execute")

),
mainPanel(
  plotOutput("TreePlot"),
  tableOutput("Prediction"),
  tableOutput("Importance")
  )

  
))