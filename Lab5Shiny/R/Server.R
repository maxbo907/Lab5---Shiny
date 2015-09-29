library(httr)
library(xlsx)
library(Lab5)

shinyServer(function(input, output){

#  lan<-lan_func(input$lan)
  output$text1 <- renderText({
          paste("input$party : ", input$party)
  })

  output$main_plot<-renderPlot({
          party<-paste(input$party,"proc",sep=".")
          plot(theData[which(theData$LÄN==input$län),which(names(theData)==party)])
  })
})