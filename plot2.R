powcons<-read.csv("household_power_consumption.txt", sep=";", na.strings = "?", stringsAsFactors=F)
powcons$Date <- as.Date(powcons$Date, "%d/%m/%Y")
mydates <- as.Date(c("2007-02-01", "2007-02-02"))
powcons<-powcons[powcons$Date %in% mydates,]
powcons$Time<-paste(powcons$Date, powcons$Time)
powcons$Time<-strptime(powcons$Time, "%Y-%m-%d %H:%M:%S")
png(filename="plot2.png")
with(powcons, plot(Time, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()