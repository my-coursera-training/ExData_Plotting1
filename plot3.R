# Replace this variable with local working directory
# Scripts and data txt file should be present on the same directory
lwd = "."
setwd(lwd)

#load data
source("load_data.R")

#set plot area
par(mfrow = c(1,1))

#plot graphic 3
plot(df$DateTime, df$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
s = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
legend("topright", legend=s, col=c("black","red","blue"), lty=1, cex=.75, 
       adj=.25, x.intersp = 4)

#save to file
dev.copy(png,"figure/plot3.png")
dev.off()