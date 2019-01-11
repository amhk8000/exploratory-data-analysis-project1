############################################################
# Coursera Data Science: Exploratory Data Analysis course
#
# Project 1: plot 3
#
#
############################################################
#read data
powerused <- read.table("./household_power_consumption.txt", header=TRUE, sep=";",dec=".", na.strings = "?")

# select two days of data.
selectused <- powerused[powerused$Date %in% c("1/2/2007","2/2/2007") ,]

# convert date variable to Date class
selectused$Date <- as.Date(selectused$Date, "%d/%m/%y")
selectused$datetime <- strptime(paste(selectused$Date, selectused$Time), "%Y-%m-%d %H:%M:%S")

png("plot3.png", width=480, height=480)

plot(selectused$datetime, selectused$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col="black")

lines(selectused$datetime, selectused$Sub_metering_2, col = "Red")

lines(selectused$datetime,selectused$Sub_metering_3,  col = "Blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), 

       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

