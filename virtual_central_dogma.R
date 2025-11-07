# Load libraries
library(shiny)
library(bslib)
  
# Load functions
source("app_functions.R")  
  
# Source UI and Server
source("ui.R")        
source("server.R")         
  
# Launch the app
shinyApp(ui = ui, server = server)