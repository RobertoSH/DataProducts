Project<-
  function(Variables,min,max,Flavor,Appearance,Smell){
    
#     Variables<-c('Flavor','Appearance','Smell')
#     min<--4
#     max<-4
#     Flavor<-1
#     Appearance<-2
#     Smell<-3
#     load('C:/Users/rsuarez/Dropbox/Cursos/DataScienceSpecialization/09_DevelopingDataProducts/ShinyApp/database.RData')
     load('database.RData')
    
    library(party)
    library(randomForest)
    
    
    if(!is.null(Variables)){
      for(i in Variables){
        database[,names(database)%in%i]<-
          database[,names(database)%in%i]+runif(
            length(database[,names(database)%in%i]),
            min,
            max)
      }
    }
    
    formula<-
      Evaluation~
      Flavor+Appearance+Smell
    
    
    Tree<<-
      ctree(formula,database)
    
    PlotTree<<-
      plot(Tree)
    
    RForest<-
      randomForest(formula,database)
    
    Importance<<-
      importance(RForest)/
      sum(importance(RForest))
    
    
    Prediction<<-
      predict(RForest,
              newdata = 
                data.frame(Flavor=Flavor,
                           Appearance=Appearance,
                           Smell=Smell))
    return(Prediction)
    
    
    # Se puede elegir calcular el bosque sin ruido y con ruido en una o 
    # varias variables, y realizar una predicción con estos valores,
    # además se puede elegir la media y varianza del ruido normal.
    
#     library(shiny)
#     
#     setwd('C:/Users/rsuarez/Dropbox/Cursos/DataScienceSpecialization/09_DevelopingDataProducts/ShinyApp')
#     
#     runApp()
    
  }

