## (Exploritory Data analysis _ Class Project #1)
## This R Script prepares data file for analysis.




## (step 1) 

## download Zip file from ("http://archive.ics.uci.edu/ml/")

if

    download.file(http://archive.ics.uci.edu/ml/, C:\Users\Kal\Documents\Coursera\ExData_Plotting1\household_power_consumption, method, quiet = FALSE, mode = "w",
              cacheOK = TRUE,
              extra = getOption("download.file.extra"))


## (Step 2)

## unzip Zip Data (houethold_power_consumption)

    unzip(zipfile, files = NULL, list = FALSE, overwrite = TRUE,
      junkpaths = FALSE, exdir = ".", unzip = "internal",
      setTimes = FALSE)


## (step 1) 

##Read  Data(houethold_power_consumption) from working Directory

  household_power_consumption <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))


## (step 2)

## Date to Posixlt

 
  household_power_consumption$Date <- strptime(household_power_consumption$Date, format = "%d/%m/%Y")
## create DateTime colou
    
    
    

## (step 3)
## (Subset Data & create Dateime coloum) 
## Subset to 2007/2/1 & 2007/2/2

    hp<- subset(household_power_consumption, as.Date(Date) >= '2007-02-01' & as.Date(Date) <= '2007-02-02')
    hp$DateTime <- paste(hp$Date, hp$Time)
    hp$DateTime <- strptime(hp$DateTime, "%Y-%m-%d %H:%M:%S")
    




## (step 4)
## Create plot



