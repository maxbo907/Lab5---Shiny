
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
