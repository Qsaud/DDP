# Install the shiny package if not already installed
# install.packages("shiny")

library(shiny) # load the shiny package

# Define UI for application
shinyUI(fluidPage(
  
  # Header or title Panel 
  titlePanel(h4('Saudi Arabian Stock Market 2014 Chart', align = "center")),
  
  # Sidebar panel
  sidebarPanel(
    
    
    
    
    
    sliderInput("lin", "Choose the thickness of the line:", min=1, max=10, value=2),
    
    radioButtons("colour", label = "Select the color of The line",
                 choices = c("Black", "Red",
                             "Yellow"), selected = "Black"),
    
    actionButton("clc", "Calculate Max Values"),
    p("Click the button to calculate Max Closing and Opening Points")
  ),
  
  # Main Panel
  mainPanel(
    plotOutput("plot1"),
    textOutput("text0"),
    textOutput("text1"),
    textOutput("text2"),
    textOutput("text3")
    
  )
  
)
)