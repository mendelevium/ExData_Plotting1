## load and clean 
source("load_and_clean.R")

## create png
png(filename = "plot2.png", width = 480, height = 480, 
    units = "px", bg = "transparent")

## plot
plot(clean$Time, clean$Global_active_power, type="l", 
    xlab = "", ylab = "Global Active Power (kilowatts)") 

## close png
dev.off()