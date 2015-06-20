library(shiny)
fit <<- lm(formula = mpg ~ am + wt, data = mtcars)

shinyServer(function(input, output) {
        

        output$oText1 <- renderText({ 
                paste("You have selected ", input$am,  " transmission type.")
        })
        
        output$oText2 <- renderText({ 
                paste("Selected weight is ", input$wt[1]*1000, " lb.")
        })
        
        output$oText3 <- renderText({ 
                am <- if(input$am == "Automatic"){
                        1
                } else {
                        0
                }
                paste("Expected MPG is ", round(predict(fit, data.frame(am = am, wt = input$wt[1])), 1)   )
        })
})