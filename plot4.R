# Code for Plot 4

# Please download the dataset, unzip it and place the file 
# "household_power_consumption.txt" in your working directory for R.

file <- "household_power_consumption.txt"
col.names <- names(read.csv2(file, nrows=1))
data <- read.table(file, sep=";", nrows=2880, skip=66637, col.names=col.names)

a=paste(data$Date,data$Time)
data$datetime <- strptime(a, "%d/%m/%Y %T")

par(mfrow = c(2, 2), mar = c(4.5, 4.5, 2, 2))
with(data, plot(datetime, Global_active_power, type="l",xlab="",ylab="Global Active Power"))
with(data, plot(datetime, Voltage, type="l"))
with(data, plot(datetime,Sub_metering_1,type="l", xlab="", ylab="Energy sub metering"))
with(data, lines(datetime,Sub_metering_2,col="red"))
with(data, lines(datetime,Sub_metering_3,col="blue"))
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(data)[7:9], bty="n")
with(data, plot(datetime, Global_reactive_power, type="l"))