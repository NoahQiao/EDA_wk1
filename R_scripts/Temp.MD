```
library(lubridate)
unzip("./EDA_w1.zip",exdir = "./EDA_w1")
dat <- subset(read.table("./EDA_w1/household_power_consumption.txt",header = T,sep= ";",na.strings = "?"),dmy(Date)>= "2007-02-01 "&dmy(Date)<= "2007-02-02 ")
png("plot1.png")
with(at,hist(Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)"))
dev.off()
```
