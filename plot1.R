# R script for plot1
png(filename="plot1.png", width=480, height=480)

data <- read.table("household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")
with(subset(data, Date == "1/2/2007" | Date == "2/2/2007"),
  hist(Global_active_power, col="red", 
       xlab="Global Active Power (kilowatts)",
       main="Global Active Power")
)

dev.off()
