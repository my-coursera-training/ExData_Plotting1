# Replace this variable with local working directory
# Scripts and data txt file should be present on the same directory
lwd = "."
setwd(lwd)

#load data
source("load_data.R")

#Set plot area
par(mfrow = c(2,2))

#plot graphic 1
plot( df$DateTime, df$Global_active_power, ylab="Global Active Power (Kilowatts)", xlab="", type="l")

#plot graphic 2
plot( df$DateTime, df$Voltage, ylab="Voltage", xlab="datetime", type="l")

#plot graphic 3
plot(df$DateTime, df$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
s = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
legend("topright", legend=s, col=c("black","red","blue"), lty=1, cex=.6, 
       adj=.15, x.intersp = 2, bty="n", y.intersp = .9)

#plot graphic 4
plot( df$DateTime, df$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

#save to file
dev.copy(png,"figure/plot4.png")
dev.off()