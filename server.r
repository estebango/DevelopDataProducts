library(shiny)
  x<<-0
  y<<-0
shinyServer(
  function(input, output) {
    x <- reactive({as.numeric(input$text1)})
    y <- reactive({as.numeric(input$text2)})

    output$text3 <- renderText({
      if (input$id1==1)x()*y()
      else if  (input$id1==2)x()+y()
      else if (input$id1==3)x()-y()
      else if (input$id1==4)x()/y()})
   
  }
)