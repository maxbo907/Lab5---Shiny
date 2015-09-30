library(httr)
library(xlsx)
library(Lab5)
library(shiny)
shinyServer(function(input, output){
        selectedData <- reactive({
                party<-paste(input$party,"proc",sep=".")
                lan=input$lan
                data.frame(kommun=theData$KOMMUN[which(theData$LAAN==lan)],
                           votes=theData[which(theData$LAAN==lan),which(names(theData)==party)])
        })
        output$main_plot<-renderPlot({
                plot(selectedData(),
                     main=paste(input$party,"in",input$lan),
                     ylab="% of votes",
                     xlab=paste("Kommuner i",input$lan),
                     type="p")
        })

})
