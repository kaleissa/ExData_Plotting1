## Construct plot2.png.

            plot2 <- function(){                
              
                png("plot2.png")                                  ## png output on 
                          
              plot(hp$Global_active_power,
                  type = "l",                                     ## lines  not points                         
                  ylab = "Global Active Power (kilowatts)" )      ## labels y axis
                           
                  dev.off ()
            }
              plot2()                                             ##   plot2() ends 