#You need get the dataset in advance, which named "dat"
#This object of script is plot the "plot2.png"

library(lubridate)
dat$Date <- dmy(dat$Date)
dat$DateTime <- as.POSIXct(paste(dat$Date, dat$Time))
Sys.setlocale(category = "LC_ALL", locale = "english")
png("plot2.png",width = 480,height = 480)
plot(dat$DateTime, dat$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")
dev.off()