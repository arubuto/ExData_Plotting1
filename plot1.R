

forplot <- read.table("household.txt", sep=";", header = TRUE)

forplot$Date <- as.Date(forplot$Date, "%d/%m/%Y")

plot1data <- subset(forplot, Date >= "2007-02-01" & Date <= "2007-02-02")


plot1data$Global_active_power <- as.numeric(as.character(plot1data$Global_active_power))

library(ggplot2)
library(lattice)
library(jpeg)
png(filename = "plot1.png",
    width = 480, height = 480)
hist(plot1data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

dev.off()
