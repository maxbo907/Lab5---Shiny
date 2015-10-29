library(httr)
library(xlsx)
library(Lab5)
library(shiny)
library(roxygen2)

#'
#' @title shinyServer
#' @name shinyServer
#' @param function(input, output) : an anonymous function taking count of what
#'        is chosen by the user and gives the corresponding output
#' @description depending of the selected län and party, an histogram is
#'        given with the score of this party in the different kommuner of
#'        this län.
#' @author Niclas Lovsjö & Maxime Bonneau
#'
#hejhej

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
