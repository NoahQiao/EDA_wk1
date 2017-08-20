# Please read me first

Actually, I found a request as below item：
"Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file **should include code for reading the data** so that the plot can be fully reproduced. You must also include the code that creates the PNG file."

It mentioned that each script should include code for reading the data, but I think it won't be convenient for code reviewer.Reload the dataset 4 times is time wasting.

So I generate a separate file named "Data_Input.R ", which help you know how to get the dataset in advance.
Hope you could understand it, thanks!

# EDA_wk1
EDA week1 Course Project 1 - Making Plots

# Variables Book
- Date: Date in format dd/mm/yyyy
- Time: time in format hh:mm:ss
- Global_active_power: household global minute-averaged active power (in kilowatt)
- Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
- Voltage: minute-averaged voltage (in volt)
- Global_intensity: household global minute-averaged current intensity (in ampere)
- Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
- Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
- Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
