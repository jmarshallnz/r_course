library(maps)
library(mapproj)

source("helpers.R")
counties <- readRDS("data/counties.rds")

shinyServer(
  function(input, output) {

    output$map <- renderPlot({

      percent_map(counties$white, color="blue", legend.title="Percent White", max=100, min=0)

    })
  }
)
