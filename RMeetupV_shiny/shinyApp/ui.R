library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("My stocks"),
  
  sidebarPanel(
    selectInput("selectedStock", "Choose a stock:", 
                choices = stocknames),
    
    verbatimTextOutput("summary")
    ),
  
  mainPanel(
    showOutput("myChart", "Morris"))
))