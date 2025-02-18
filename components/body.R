###################
# body.R
# 
# Create the body for the ui. 
# If you had multiple tabs, you could split those into their own
# components as well.
###################
body <- dashboardBody(
  tabItems(
    
    ########################
    # First tab content
    ########################
    
    tabItem(
      tabName = "dashboard",
      fluidRow(
        
        # CONTROLS
        box(
          
          title = "Controls",
          
          numericInput("caption", "Caption", 1),
          textOutput("caption"),
          actionButton("simulate", "Simulate!")
          
        ),
        # PLOT THE THTINGS
        box( plotOutput("histPlot") )
      )
    ),
    
    ########################
    # Second tab content
    ########################
    tabItem(
      tabName = "Dataset",
      h2("Dataset tab content"),
      mainPanel(
        
        # Output: Tabset w/ plot, summary, and table ----
        tabsetPanel(type = "tabs",
                    tabPanel("Summary", verbatimTextOutput("summary")),
                    tabPanel("Table", tableOutput("table"))
        ))
    ),
    tabItem(
      tabName = "bar_chart",
      h2("Charts tab content"),
      mainPanel(
        
        # Output: Tabset w/ plot, summary, and table ----
        tabsetPanel(type = "tabs",
                    tabPanel("Bar Chart 1", plotOutput("bar_chart")
                             
                             
                    ),
                    tabPanel("Bar Chart 2", plotOutput("bar_chart")),
                    tabPanel("Bar Chart 3", plotOutput("bar_chart"))
                    
        ))),
    tabItem(
      tabName = "line_chart",
      h2("Charts tab content"),
      mainPanel(
        
        # Output: Tabset w/ plot, summary, and table ----
        tabsetPanel(type = "tabs",
                    tabPanel("Line Chart 1", plotOutput("bar_chart")),
                    tabPanel("Line Chart 2", plotOutput("line_chart")),
        ))),
    tabItem(
      tabName = "pie_chart",
      h2("Charts tab content"),
      mainPanel(
        
        # Output: Tabset w/ plot, summary, and table ----
        tabsetPanel(type = "tabs",
                    tabPanel("Pie Chart 1", plotOutput("pie_chart")),
                    tabPanel("Pie Chart 2", plotOutput("pie_chart"))
                    
        )
    ))
    
    
  )
)