forplot <- read.table("household.txt", sep=";", header = TRUE, na.strings = "?")

forplot$dt = strptime(paste(forplot$Date, forplot$Time), format="%d/%m/%Y %H:%M:%S")

forplot$Date = as.Date(forplot$Date, format = "%d/%m/%Y")

plot2data <- subset(forplot, Date >= "2007-02-01" & Date <= "2007-02-02")

png(filename = "plot3.png",
    width = 480, height = 480)

with(plot2data,{
        plot(plot2data$dt, plot2data$Sub_metering_1, type = "l", col = "black", 
             ylab = "Energy sub metering", xlab = " ", )
        points(plot2data$dt, plot2data$Sub_metering_2, type = "l", col = "red")
        points(plot2data$dt, plot2data$Sub_metering_3, type = "l", col = "blue")
        legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"),
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
           })
        
dev.off()