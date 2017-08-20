#You need get the dataset in advance, which named "dat"
#This object of script is plot the "plot1.png"

png("plot1.png",width = 480,height = 480)
with(dat,hist(Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)"))
dev.off()