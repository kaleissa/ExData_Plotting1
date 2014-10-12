## plot2() is a function to construct plot1.png.
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

## Construct plot2.png.

            plot2 <- function(){                
              
                png("plot2.png")                                  ## png output on 
                          
              plot(hp$Global_active_power,
                  type = "l",                                     ## lines  not points                         
                  ylab = "Global Active Power (kilowatts)" )      ## labels y axis
                           
                  dev.off ()
            }
              plot2()                                             ##   plot2() ends 