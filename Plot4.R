#You need get the dataset in advance, which named "dat"
#This object of script is plot the "plot4.png"

png("plot4.png",width = 480,height = 480)
par(mfrow = c(2,2))
plot(dat$DateTime, dat$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
plot(dat$DateTime, dat$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(dat$DateTime, dat$Sub_metering_1,xlab = "",ylab = "Energy sub metering",type = "l")
lines(dat$DateTime,dat$Sub_metering_2,col = "red")
lines(dat$DateTime,dat$Sub_metering_3,col = "blue")
legend("topright",col = c("black","red","blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1)
plot(dat$DateTime, dat$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
dev.off()