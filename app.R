###################
# app.R
# 
# Main controller. 
# Used to import your ui and server components; initializes the app.
###################
library(shiny)
library(shinydashboard)
library(bslib)

source('./ui.R')
source('./server.R')

##############################  SHINY APP #######################################################
options(shiny.autoreload = TRUE)
shinyApp(ui, server, options = list(launch.browser = TRUE))

