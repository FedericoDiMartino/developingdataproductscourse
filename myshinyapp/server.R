
library(shiny)
library(datasets) ## Where VADeaths dataset is located



# Define a server for the Shiny app
function(input, output) {
    
    # Fill in the spot we created for a plot
    output$deathPlot <- renderPlot({
        
        # Render a barplot
        barplot(VADeaths[,input$category], 
                main=input$category,
                ylab="Death Rate",
                xlab="Age Cohort")
    })
}




