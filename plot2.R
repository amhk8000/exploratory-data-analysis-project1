############################################################
# Coursera Data Science: Exploratory Data Analysis course
#
# Project 1: plot 2
#
#
############################################################
#read data
powerused <- read.table("./household_power_consumption.txt", header=TRUE, sep=";",dec=".", na.strings = "?")

# subset data two days of data
selectused <- poweruse[powerused$Date %in% c("1/2/2007","2/2/2007") ,]
 

# Convert date and time columns and merg
selectused$Date <- as.Date(selectused$Date, "%d/%m/%y")
selectused$datetime <- strptime(paste(selectused$Date, selectused$Time), "%Y-%m-%d %H:%M:%S")

selectused$Global_active_power <- as.numeric(selectused$Global_active_power)

# Plot 2
png("plot2.png", width=480, height=480)
plot(selectused$datetime, selectused$Global_active_power, type="l", ylab="Global Active Power (kilowatts)",xlab="" )

dev.off()

