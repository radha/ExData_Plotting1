powcons<-read.csv("household_power_consumption.txt", sep=";", na.strings = "?", stringsAsFactors=F)
powcons$Date <- as.Date(powcons$Date, "%d/%m/%Y")
mydates <- as.Date(c("2007-02-01", "2007-02-02"))
powcons<-powcons[powcons$Date %in% mydates,]
png(filename="plot1.png")
hist(powcons$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()