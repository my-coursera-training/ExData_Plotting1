# Replace this variable with local working directory
# Scripts and data txt file should be present on the same directory
lwd = "."
setwd(lwd)

#load data
source("load_data.R")

#set plot area
par(mfrow = c(1,1))

#plot graphic 1
hist(df$Global_active_power, main = "Global Active Power", col="red", xlab="Global Active Power (Kilowatts)")

#save to file
dev.copy(png,"figure/plot1.png")
dev.off()
  