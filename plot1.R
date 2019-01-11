############################################################
# Coursera Data Science: Exploratory Data Analysis course
#
# Project 1: plot 1
#
#
############################################################
#read data
#poweruse  <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names = c('activityId','activityType'))


poweruse <- read.table("./household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?")
  
 # select two days of data.
 selectpower <- poweruse[poweruse$Date %in% c("1/2/2007","2/2/2007") ,]
 
#convert dates to date class.
selectpower$Date <- as.Date(selectpower$Date, "%d/%m/%y")
 
#deleted rows with  NA values
selectpower <-na.omit(selectpower)
 
#plot data
png("plot1.png", width=480, height=480)

#make a histogram.
hist(selectpower$Global_active_power, col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
 
dev.off()