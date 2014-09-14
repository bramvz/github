library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("BMI Calculator"),
  sidebarPanel(
    numericInput('height','Enter your height in centimeters:', 0, min=0, max=250, step=1),
    numericInput('weight','Enter your weight in kilos:', 0, min=0, max=350, step=1),
    submitButton('Calculate BMI')
  ),
  mainPanel(
    h3('Your BMI: '),
    verbatimTextOutput("bmi"),
    h5('You entered:'),
    verbatimTextOutput("weight"),
    verbatimTextOutput("height"),
    h5('Calculation: weight/(height^2)')
  )
))