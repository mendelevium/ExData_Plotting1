## load and clean 
source("load_and_clean.R")

## create png
png(filename = "plot1.png", width = 480, height = 480, 
    units = "px", bg = "transparent")

## plot
hist(clean$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## close png
dev.off()