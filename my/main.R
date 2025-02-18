library(shiny)
library(bslib)
library(shinydashboard)

#source("./ui.R")
source("./server.R")


##############################  UI #######################################################

ui <- page_sidebar(
  # App title ----
  title = "Hello sara!",
  # Sidebar panel for inputs ----
  sidebar = sidebar(
    # Input: Slider for the number of bins ----
    sliderInput(
      inputId = "bins",
      label = "Number of bins:",
      min = 1,
      max = 50,
      value = 30
    )
  ),
  # Output: Histogram ----
  plotOutput(outputId = "distPlot")
)



##############################  SERVER #######################################################

server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#007bc2", border = "orange",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")
    
  })
  
}

##############################  SHINY APP #######################################################
options(shiny.autoreload = TRUE)
shinyApp(ui = ui, server = server, options = list(launch.browser = TRUE))
