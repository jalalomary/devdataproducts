library(shiny)

source("age_function.R")

shinyServer(function(input, output) {
    age <- reactive({age_years(input$dob,Sys.Date())})
    output$age <- renderText({age()})
    start_year <- reactive({as.numeric(format(input$dob, "%Y"))})
    end_year <- reactive({start_year() + age()})
    output$plot <- renderPlot({
      plot(c(start_year():end_year()), c(0:age()), xlab="Year", ylab="Age",
           lines(c(start_year():end_year()), c(0:age()),col="red"))
      
    })
})