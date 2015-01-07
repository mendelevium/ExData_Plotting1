## load and clean 
source("load_and_clean.R")

## create png
png(filename = "plot3.png", width = 480, height = 480, 
    units = "px", bg = "transparent")

## plot
plot(clean$Time, clean$Sub_metering_1, type="l", 
     xlab = "", ylab = "Energy sub metering")
##lines(clean$Time, clean$Sub_metering_1, type="l", col="black")
lines(clean$Time, clean$Sub_metering_2, type="l", col="red")
lines(clean$Time, clean$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1), col=c("black", "red", "blue"))

## close png
dev.off()