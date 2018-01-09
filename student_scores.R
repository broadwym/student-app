## app.R ##
library(shiny)
library(magrittr)
library(ggplot2)

# Data pre-processing ----
satGPA = satGPA 
satGPA$sex = gsub("1", "Male", satGPA$sex) 
satGPA$sex = gsub("2", "Female", satGPA$sex)

# User interface ----
ui <- fluidPage(
  
  titlePanel("Student SAT and GPA Results"),
  sidebarPanel(
    # Select Y Axis 
    selectInput('variable1', 'Y Axis', choices = c("SAT Verbal" = "SATV",
                                                   "SAT Math" = "SATM",
                                                   "SAT Sum" = "SATSum",
                                                   "High School GPA" = "HSGPA",
                                                   "First Year University GPA" = "FYGPA")),
    # Select X Axis 
    selectInput('variable2', 'X Axis', choices = c("SAT Verbal" = "SATV",
                                                   "SAT Math" = "SATM",
                                                   "SAT Sum" = "SATSum",
                                                   "High School GPA" = "HSGPA",
                                                 "First Year University GPA" = "FYGPA")),
   
    # Choose Model to fit  
    selectInput("model",                       
                "Model Type",                  
                choices = c("None" = "none",   
                            "Linear" = "lm",
                            "Smooth" = "smooth"))
  ),
  mainPanel(
    plotOutput('plot_data')
  )
)

# Server ----
server <- function(input,output,session){
  
  # Output plot 
  output$plot_data<-renderPlot({
    y_axis <- input$variable1
    x_axis <- input$variable2
    gg <- ggplot(satGPA, aes_string(x = x_axis, y = y_axis, color = "sex")) 
    gg <- gg + geom_point() 
  
     # Display Model Fit (Line through data) 
    ## Linear Model Fit
    if (input$model == "lm") {
      gg <- gg + geom_smooth(method = "lm")
    }
    
    ## Smooth Model Fit
    else if (input$model == "smooth") {
      gg <- gg + geom_smooth(method = "loess")
    }
    
    # Display the Plot
    gg
  })
}
shinyApp(ui, server)