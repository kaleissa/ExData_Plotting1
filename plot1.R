 ## plot1() is a function to construct plot1.png.
 ## Open Data.R - gets the zip file, extracts it, creates subset, and DateTime.


      plot1 <- function() {  ##  plot1() Starts here

        png("plot1.png")                                 ## png output on  
                       
        hist(hp$Global_active_power,                       ## hist() to create a histogram 
         col= "red",                                   ## sets plot bar color to red
         main = "Global Active Power",                 ## Sets"main" label 
         xlab = "Global Active Power (kilowatts)"      ## Sets Xaxis label
                              )
        dev.off()                                        ## screen output OFF
 
  
                               }    ##   plot1() ends here

