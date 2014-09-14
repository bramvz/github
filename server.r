library(shiny)

bmicalc <- function(weight,height) weight/((height/100)^2)

shinyServer(
  function(input,output){
    output$bmi    <- renderPrint({bmicalc(input$weight,input$height)})  
    output$weight <- renderPrint(c('Weight (KG): ', {input$weight}))
    output$height <- renderPrint(c('Height (CM): ',{input$height}))
    
  }
)