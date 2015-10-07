# Replace this variable with local working directory
# Scripts and data txt file should be present on the same directory
lwd = "."
setwd(lwd)

#load data
source("load_data.R")

#set plot area
par(mfrow = c(1,1))

#plot graphic 2
plot( df$DateTime, df$Global_active_power, ylab="Global Active Power (Kilowatts)", xlab="", type="l")

dev.copy(png,"figure/plot2.png")
dev.off()
  