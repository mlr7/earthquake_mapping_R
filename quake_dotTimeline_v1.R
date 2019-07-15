quake_dotTimeline_v1 <- function(data1)  {
  
  ## add "year" column to data frame:
  
  data1$year <- NA
  data1$month <- NA
  
  for (i in 1:nrow(data1))
  {
    data1$year[i] <- substring(data1$time[i], 1, 4)
    data1$month[i] <- substring(data1$time[i], 6, 7)
  }
  
  #ggplot(reduce1Data, aes(x=DateMadePublic, y=Entity, size = TotalRecords3, colour = Entity)) + geom_point(alpha = 0.5) + scale_size_continuous(range = c(3,20)) + theme_bw(base_size = 18)
  
  ggplot(data1, aes(x = month, y = year, size = mag, colour = year)) + geom_point(alpha = 0.5) + theme_bw(base_size = 18) + scale_size_continuous(range = c(3,20))
  ## I see, "scale_size_continuous(range = c(3,20))" is controlling size of dots . . . cool, use on maps too . . . 
  
  
  ggplot(data1, aes(x = month, y = year, size = mag, colour = year)) + geom_point(alpha = 0.5) + theme_bw(base_size = 18) # + scale_size_continuous(range = c(3,20))
  
  ## cool . . . 
  ## better, use real date on "x-axis" . . . 
  ## (spend 30 minutes tommo during reboot on this . . .)
  ## then, will probably want to cut it down, filter (above 4.0, above 5.0, etc.) (might show full first, and then clean it up, in post)
  
  ## give it a naive try (probably, need dmy library . . .)
  ggplot(data1, aes(x = time, y = year, size = mag, colour = year)) + geom_point(alpha = 0.5) + theme_bw(base_size = 18) + scale_size_continuous(range = c(3,20))
  
  
  browser()
}