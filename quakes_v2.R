quakes_v2 <- function(dataFile)  {

  # rm(list=ls())
  # source("quakes_v2.R")
  # quakes_v2("usgsQuery_LA_84-14.csv")
  
  browser()
  
  library(ggmap)
  
  ## read in data
  data <- read.csv(dataFile, sep = ",", stringsAsFactors = FALSE)
  
  ## plot histogram
  hist(dataFit, breaks = 30 , col = "red", las = 1, xlab = "Earthquake Magnitude", main = "Greater Los Angeles Area Earthquakes, 1984-2014 ")
  
  ## map earthquake epicenters
  map1 <- qmap(location = "los angeles", zoom = 10, source = "osm") +
          geom_point(data = data,aes(x = longitude, y = latitude, size = mag, alpha = 1/40, colour="red"))
  
  ## pause execution for further analysis ('c' to continue)
  browser()
  
  # geocode("Baylor University", output = "more") ## for coords built on . . .
  
}