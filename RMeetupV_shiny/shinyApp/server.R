library(shiny)
library(rCharts)

shinyServer(function(input, output) {
  
  output$summary <- renderPrint({
    summary(stockprices[input$selectedStock])
  })
    
  output$myChart <- renderChart({
    m1 <- mPlot(x = "Date", y = input$selectedStock, type = "Line", data = stockprices)
    m1$set(pointSize = 0, lineWidth = 1)
    m1$addParams(dom = 'myChart')
    return(m1)
  })
  
})