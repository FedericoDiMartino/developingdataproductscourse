
library(shiny)
library(datasets) ## Where VADeaths dataset is located


fluidPage(    
    
    # Give the page a title
    titlePanel("Virginian Death Rates by gender and Urban/Rural location"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with one input
        sidebarPanel(
            selectInput("category", "Category:", 
                        choices=colnames(VADeaths)),
            hr(),
            helpText("Documentation: Use drop down menu to select category of people to view death rates of.
                     Source: Molyneaux, L., Gilliam, S. K., and Florant, L. C.(1947) Differences in Virginia death rates by color, sex, age, and rural or urban residence. American Sociological Review, 12, 525-535")
        ),
        
        # Create a spot for the barplot
        mainPanel(
            plotOutput("deathPlot")  
        )
        
    )
)

