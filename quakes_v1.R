quakes_v1 <- function(dataFile)  {

  # rm(list=ls())
  # source("quakes_v1.R")
  # quakes_v1("usgsQuery_LA_84-14.csv")
  
  browser()
  
  library(ggmap)
  
  data <- read.csv(dataFile, sep = ",", stringsAsFactors = FALSE)
  
  browser()
  
  # LAmap <- qmap("los angeles", zoom = 10, color = "bw")
  
  # qmap("los angeles", zoom = 10, source = "stamen", maptype = "watercolor")
  # qmap("los angeles", zoom = 10, source = "stamen", maptype = "toner")
  map1 <- qmap(location = "los angeles", zoom = 10, source = "osm")  #+ 
          #geom_point(data = data,aes(x = longitude, y = latitude, size = mag, alpha = 0.01))
  
  print(map1 + geom_point(data = data,aes(x = longitude, y = latitude, size = mag, alpha = 1/40, color = "gray80")))
  
  map3 <- qmap(location = "los angeles", zoom = 9, source = "osm")  ## best
  
  map2 <- qmap(location = "los angeles", zoom = 8, source = "osm")
  print(map2 + geom_point(data = data,aes(x = longitude, y = latitude, size = mag, alpha = 1/40)))
  
  
  mag7 <- subset(data, mag >= 7)
  map4 <- qmap(location = "los angeles", zoom = 8, source = "osm")
  
  hist(dataFit, breaks = 30 , col = "red", las = 1, xlab = "Earthquake Magnitude", main = "Greater Los Angeles Area Earthquakes, 1984-2014 ")
  
  
  map1 <- qmap(location = "los angeles", zoom = 10, source = "osm") +
          geom_point(data = data,aes(x = longitude, y = latitude, size = mag, alpha = 1/40, colour="red"))
  
  
  
  browser()
  
}