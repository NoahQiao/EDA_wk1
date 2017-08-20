#This is the script whose object is download the dataset and load it in R.
#You will get a data.frame named "dat"
#Need the package "lubridate"

library(lubridate)
Url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(Url,"./EDA_wk1")
unzip("./EDA_w1.zip",exdir = "./EDA_w1")
dat <- subset(read.table("./EDA_w1/household_power_consumption.txt",header = T,sep= ";",na.strings = "?"),dmy(Date)>= "2007-02-01 "&dmy(Date)<= "2007-02-02 ")