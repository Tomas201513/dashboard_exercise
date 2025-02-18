
server <- function(input, output) {
  timer <- reactiveTimer(5000)
  
  output$caption <- renderText({
    paste("The input number is", string())
  })  
  observeEvent(input$caption, {
    message("Greeting performed")
  })
  
  string <- reactive({
    timer()
    input$caption+5})
  

  
}

