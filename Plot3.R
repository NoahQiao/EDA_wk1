#You need get the dataset in advance, which named "dat"
#This object of script is plot the "plot3.png"

png("plot3.png",width = 480,height = 480)
plot(dat$DateTime, dat$Sub_metering_1,xlab = "",ylab = "Energy sub metering",type = "l")
lines(dat$DateTime,dat$Sub_metering_2,col = "red")
lines(dat$DateTime,dat$Sub_metering_3,col = "blue")
legend("topright",col = c("black","red","blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1)
dev.off()