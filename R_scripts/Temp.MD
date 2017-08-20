```
library(lubridate)
unzip("./EDA_w1.zip",exdir = "./EDA_w1")
dat <- subset(read.table("./EDA_w1/household_power_consumption.txt",header = T,sep= ";",na.strings = "?"),dmy(Date)>= "2007-02-01 "&dmy(Date)<= "2007-02-02 ")

#plot1
png("plot1.png",width = 480,height = 480)
with(dat,hist(Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)"))
dev.off()

#plot2
dat$Date <- dmy(dat$Date)
dat$DateTime <- as.POSIXct(paste(dat$Date, dat$Time))
Sys.setlocale(category = "LC_ALL", locale = "english")
png("plot2.png")
plot(dat$DateTime, dat$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
dev.off()

#plot3
png("plot3.png")
plot(dat$DateTime, dat$Sub_metering_1,xlab = "",ylab = "Energy sub metering",type = "l")
lines(dat$DateTime,dat$Sub_metering_2,col = "red")
lines(dat$DateTime,dat$Sub_metering_3,col = "blue")
legend("topright",col = c("black","red","blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1)
dev.off()

#plot4
png("plot4.png")
par(mfrow = c(2,2))
plot(dat$DateTime, dat$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
plot(dat$DateTime, dat$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(dat$DateTime, dat$Sub_metering_1,xlab = "",ylab = "Energy sub metering",type = "l")
lines(dat$DateTime,dat$Sub_metering_2,col = "red")
lines(dat$DateTime,dat$Sub_metering_3,col = "blue")
legend("topright",col = c("black","red","blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1)
plot(dat$DateTime, dat$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
dev.off()
```




