main_quakes_v1 <- function(dataFile)  {
  
  # rm(list=ls())
  # source("main_quakes_v1.R")
  # main_quakes_v1("usgsQuery_LA_84-14.csv")
  
  library(ggmap)
  
  ## read in data
  data <- read.csv(dataFile, sep = ",", stringsAsFactors = FALSE)
  
  
  ## plot histogram
  dataFit <- data$mag
  hist(dataFit, breaks = 30 , col = "red", las = 1, xlab = "Earthquake Magnitude", main = "Greater Los Angeles Area Earthquakes, 1984-2014 ")
  
  ## map earthquake epicenters
  #map1 <- qmap(location = "los angeles", zoom = 10, source = "osm") +
  #        geom_point(data = data,aes(x = longitude, y = latitude, size = mag, alpha = 1/40, colour="red"))
  
  ## pause execution for further analysis ('c' to continue)
  
  #source("quake_clustering_v1.R")
  #quake_clustering_v1(data)
  
  source("quake_dotTimeline_v1.R")
  quake_dotTimeline_v1(data)
  
  browser()
  
}