# R script for plot2
png(filename="plot2.png", width=480, height=480)

data <- read.table("household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")
with(subset(data, Date == "1/2/2007" | Date == "2/2/2007"),
 {plot(seq_along(Time), Global_active_power, type="l", xaxt="n",
       xlab="", ylab="Global Active Power (kilowatts)")
  axis(1, at=c(0, 24*60, 2*24*60), labels=c("Thu", "Fri", "Sat"))
})

dev.off()

