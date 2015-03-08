setwd("d:/zhengcl/Datascience/Exploratory/project1")
consump <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
consump_subset <- subset(consump, Date=="1/2/2007" | Date=="2/2/2007")
dt <- paste(consump_subset$Date,consump_subset$Time)
dt1 <- strptime(dt, "%d/%m/%Y %H:%M:%S")
par(mfcol=c(2,2))

plot(dt1, consump_subset$Global_active_power, type="l", xlab = "", ylab="Global Active Power(Kilowatts)")

plot(dt1, consump_subset$Sub_metering_1, type="n", xlab = "", ylab="Energy sub metering")
points(dt1, consump_subset$Sub_metering_1, type="l",col="green")
points(dt1, consump_subset$Sub_metering_2, type="l",col="red")
points(dt1, consump_subset$Sub_metering_3, type="l",col="blue")

plot(dt1, consump_subset$Voltage, type="l", xlab = "datetime", ylab="Voltage")

plot(dt1, consump_subset$Global_reactive_power, type="l", xlab = "datetime", ylab="Global_reactive_power")

dev.copy(png, file="plot4.png")
dev.off()