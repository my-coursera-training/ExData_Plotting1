if (file.exists("df.dat")) {
  load("df.dat")
} else {
  library("dplyr")
  csv <- read.csv("household_power_consumption.txt", sep=";", 
                colClasses = c("character", "character", "numeric", "numeric", 
                               "numeric", "numeric", "numeric", "numeric", 
                               "numeric"), na.strings="?")
  df <- filter(csv, Date == "1/2/2007" | Date == "2/2/2007") 
  df$DateTime <- strptime(paste(df$Date,df$Time), format = "%d/%m/%Y %H:%M:%S")
  save(df, file="df.dat")
}
