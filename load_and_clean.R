## setwd("~/R")

## variables
beg <- as.Date("2007-02-01")
end <- as.Date("2007-02-02")
unzipPath <- "./data"
filePath <- "./data/household_power_consumption.txt"
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## create data folder
if (!file.exists("data")) {
    dir.create("data")
}

## download and unzip data
if (!file.exists(filePath)) {
    temp <- tempfile()
    download.file(url, temp)
    unzip(temp, exdir = unzipPath)
    unlink(temp)
}

## clean data
if (!exists("clean")) {
    ## change load data and replace ? with NA
    csv <- read.csv(filePath, sep=";", header=TRUE, na.strings = "?")
    ## change date format
    csv$Date <- as.Date(csv$Date, "%d/%m/%Y")
    ## subset from beg to end
    clean <- subset(csv, csv$Date >= beg & csv$Date <= end)
    ## change time format
    clean$Time <- as.POSIXct(paste(clean$Date, clean$Time), 
        format="%Y-%m-%d %H:%M:%S")    
}

