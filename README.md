Objective
The object of this assignment is to produce plots to examine how household energy usage varies over a 2-day period.
Introduction
This is the first project in the Exploratory Data Analysis course offered by Coursera’s data science specialization program.
This assignment examines and plots an individual household electric power usage over 2 days period from Feb 1- 2 in 2007. The data set comes from the UC Irvine Machine Learning Repository that
contains power consumption measurements for one household with a one-minute sampling rate over a period of almost 4 years.
The data set contains the following fields
1.	Date: Date in format dd/mm/yyyy
2.	Time: time in format hh:mm:ss
3.	Global_active_power: household global minute-averaged active power (in kilowatt)
4.	Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5.	Voltage: minute-averaged voltage (in volt)
6.	Global_intensity: household global minute-averaged current intensity (in ampere)
7.	Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8.	Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9.	Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
Loading and processing data
When loading the dataset into R, please consider the following:
•	The dataset with 2,075,259 rows and 9 columns was loaded to current directory and a subset data Feb 1-2 was selected.
•	A new DateTime class was created from Date and Time variables using as.Date() and strptime() functions
•	The fields for the plots are converted to numeric type.
•	Rows with no reading are removed.
Making Plots
Once the data is ready, each of the four plots are done as follows.
•	A plot is constructed and saved  to a PNG file with a width of 480 pixels and a height of 480 pixels.
•	Each plot file is named as plot1.png, plot2.png, etc.
•	A separate R code file for each plot is created and each R file includes a code for reading the data.

Finally the R code files and the plots are pushed to the top-level folder GitHub repository. There are 8 files, four PNG pictures and four R code files.
