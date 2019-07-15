quake_clustering_v1 <- function(data1)  {
  
  #browser()
  
  library(ggmap)
  
  plot(data1$latitude, data1$longitude) ## scatter plots of all quakes in data file
  
  ## trying to get lat/lon coordinates from ggmap . . . 
  ##     so can get subset of points to cluster on . . . 
  
  ## found a way to see what they are 
  # la <- geocode("los angeles")
  # la
  # geocode("Baylor University", output = "latlona")
  # geocode("Baylor University", output = "all")
  # geocode("Los Angeles", zoom = 10, output = "more") ## crash
  geocode("Los Angeles", output = "more")
  
  
  browser()
}