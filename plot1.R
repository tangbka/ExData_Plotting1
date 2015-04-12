# Code for Plot 1

# Please download the dataset, unzip it and place the file 
# "household_power_consumption.txt" in your working directory for R.

file <- "household_power_consumption.txt"
col.names <- names(read.csv2(file, nrows=1))
data <- read.table(file, sep=";", nrows=2880, skip=66637, col.names=col.names)

hist(data$Global_active_power, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)",cex.main=1)
