library(shiny)

shinyUI(fluidPage(
        titlePanel("Expected MPG"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("Input transmission and weight"),
                        
                        selectInput("am", 
                                    label = "What is the type of transmission? ",
                                    choices = list("Manual", "Automatic"),
                                    selected = "Automatic"),
                        
                        sliderInput("wt", 
                                    label = "What is the Weight (lb/1000) ?",
                                    min = 1, max = 6, value = c(1, 6))
                        ),
                
                mainPanel(
                        textOutput("oText1"),
                        textOutput("oText2"),
                        textOutput("oText3")
                )
        )
))