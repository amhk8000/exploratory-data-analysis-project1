############################################################
# Coursera Data Science: Exploratory Data Analysis
#
# Course project 1: plot4
#
#
############################################################

powerused <- read.table("./household_power_consumption.txt", header=TRUE, sep=";",dec=".", na.strings = "?")

# subset Two days of data
selectused <- powerused[powerused$Date %in% c("1/2/2007","2/2/2007"),]


# convert the date variable to Date class
selectused$Date <- as.Date(selectused$Date, "%d/%m/%y")
selectused$datetime <- strptime(paste(selectused$Date, selectused$Time), "%Y-%m-%d %H:%M:%S")

selectused$Global_active_power <- as.numeric(selectused$Global_active_power)
selectused$Global_reactive_power <- as.numeric(selectused$Global_reactive_power)
selectused$voltage <- as.numeric(selectused$Voltage)
selectused$Sub_metering_1 <- as.numeric(selectused$Sub_metering_1)
selectused$Sub_metering_2 <- as.numeric(selectused$Sub_metering_2)
selectused$Sub_metering_3 <- as.numeric(selectused$Sub_metering_3)

# Plot 4
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(selectused$datetime,selectused$Global_active_power,type="l",  xlab="",ylab="Global Active Power")  

plot(selectused$datetime,selectused$voltage, type="l",xlab="datetime",ylab="Voltage")

plot(selectused$datetime,selectused$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="black")

lines(selectused$datetime,selectused$Sub_metering_2, col="red")

lines(selectused$datetime,selectused$Sub_metering_3, col="blue")

legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1)

plot(selectused$datetime,selectused$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()
