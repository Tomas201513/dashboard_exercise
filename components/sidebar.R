###################
# sidebar.R
# 
# Create the sidebar menu options for the ui.
###################
sidebar <- dashboardSidebar(
  sidebarMenu(

    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Dataset", tabName = "Dataset", icon = icon("table")),
    menuItem("Charts", tabName = "charts", icon = icon("chart-bar"),
             menuSubItem("Bar Chart", tabName = "bar_chart"),
             menuSubItem("Line Chart", tabName = "line_chart"),
             menuSubItem("Pie Chart", tabName = "pie_chart")
    )
    
  )
)
