#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser, Yellowstone National Park, Wyoming, USA"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "bins",
                        label = "Number of waiting time bins:",
                        min = 1,
                        max = 50,
                        value = 25,
                        step = 1,
                        width = '100%')
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        ),
        position = "right"
    )
))
