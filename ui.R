library(httr)
library(xlsx)
library(Lab5)
library(shiny)
library(roxygen2)

#'
#' @title shinyUI
#' @name shinyUI
#' @param no parameters
#' @description Creates the aesthetic part of the Shiny application
#' @author Niclas Lovsjö & Maxime Bonneau
#'

shinyUI(fluidPage(
      selectInput("lan",
                  label = "Choose a län",
                  choices = laan1,
                  selected = "Värmlands län"),


      selectInput("party",
                    label = "Choose a party",
                    choices = party1,
                        selected = "S"
                  ),

      plotOutput("main_plot")
      # textOutput("text1"))
  ))
