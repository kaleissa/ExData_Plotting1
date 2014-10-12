 ## plot1() is a function to construct plot1.png.
 ## Open Data.R - gets the zip file, extracts it to working directory.

 

##Read Data (houethold_power_consumption) from working Directory

household_power_consumption <- 
  read.table("household_power_consumption.txt", 
             header=TRUE, sep=';', 
             na.strings="?", 
             colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

## Date to Posixlt

household_power_consumption$Date <- strptime(household_power_consumption$Date, format = "%d/%m/%Y")

## (Subset Data & create Dateime coloum) 
## Subset to 2007/2/1 & 2007/2/2

hp<- subset(household_power_consumption, as.Date(Date) >= '2007-02-01' & as.Date(Date) <= '2007-02-02')
hp$DateTime <- paste(hp$Date, hp$Time)
hp$DateTime <- strptime(hp$DateTime, "%Y-%m-%d %H:%M:%S")

## Create plot

      plot1 <- function() {  ##  plot1() Starts here

        png("plot1.png")                                 ## png output on  
                       
        hist(hp$Global_active_power,                       ## hist() to create a histogram 
         col= "red",                                   ## sets plot bar color to red
         main = "Global Active Power",                 ## Sets"main" label 
         xlab = "Global Active Power (kilowatts)"      ## Sets Xaxis label
                              )
        dev.off()                                        ## screen output OFF
 
  
                               }    ##   plot1() ends here

