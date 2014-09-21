library(shiny)

shinyUI(pageWithSidebar(

  headerPanel("Age Calculator"),

  sidebarPanel(
    helpText("This simple application will calculate your age, 
             you can fill your birth date below, 
             and it will automatically populate the calculated 
             age and display it on the right side."),
    dateInput("dob", "Birth Date:", max = Sys.Date() -1, value="1990-01-01")
  ),

  mainPanel(
    h3("Your age is: "),
    verbatimTextOutput("age"),
    plotOutput("plot")
  )
))