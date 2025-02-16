
library(shiny)
library(bslib)
library(shinydashboard)

source("./ui.R")
source("./server.R")



# Run the application ----
shinyApp(ui = ui, server = server)
