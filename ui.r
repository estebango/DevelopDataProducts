shinyUI(pageWithSidebar(
  headerPanel("Basic Calculator"),
  sidebarPanel(
    textInput(inputId="text1", label = "First Number"),
    textInput(inputId="text2", label = "Second Number"),
    radioButtons("id1", "Select Operation",
                       c("Multiplication" = "1",
                         "Addition" = "2",
                         "Substraccion" = "3",
                         "Division"= "4"))
    ),
  mainPanel(
    h3('Results'),
    textOutput('text3')
    )
))