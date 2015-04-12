# Code for Plot 2

# Please download the dataset, unzip it and place the file 
# "household_power_consumption.txt" in your working directory for R.

file <- "household_power_consumption.txt"
col.names <- names(read.csv2(file, nrows=1))
data <- read.table(file, sep=";", nrows=2880, skip=66637, col.names=col.names)

a=paste(data$Date,data$Time)
data$datetime <- strptime(a, "%d/%m/%Y %T")

with(data, plot(datetime, Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)"))
