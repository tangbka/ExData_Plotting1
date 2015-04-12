# Code for Plot 3

# Please download the dataset, unzip it and place the file 
# "household_power_consumption.txt" in your working directory for R.

file <- "household_power_consumption.txt"
col.names <- names(read.csv2(file, nrows=1))
data <- read.table(file, sep=";", nrows=2880, skip=66637, col.names=col.names)

a=paste(data$Date,data$Time)
data$datetime <- strptime(a, "%d/%m/%Y %T")

with(data, plot(datetime,Sub_metering_1,type="l", xlab="", ylab="Energy sub metering"))
with(data, lines(datetime,Sub_metering_2,col="red"))
with(data, lines(datetime,Sub_metering_3,col="blue"))
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(data)[7:9])
