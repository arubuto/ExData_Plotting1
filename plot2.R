forplot <- read.table("household.txt", sep=";", header = TRUE, na.strings = "?")

forplot$dt = strptime(paste(forplot$Date, forplot$Time), format="%d/%m/%Y %H:%M:%S")

forplot$Date = as.Date(forplot$Date, format = "%d/%m/%Y")

plot2data <- subset(forplot, Date >= "2007-02-01" & Date <= "2007-02-02")

png(filename = "plot2.png",
    width = 480, height = 480)

plot(plot2data$dt, plot2data$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

dev.off()