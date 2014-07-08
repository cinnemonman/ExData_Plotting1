# R script for plot3
png(filename="plot3.png", width=480, height=480)

data <- read.table("household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")
with(subset(data, Date == "1/2/2007" | Date == "2/2/2007"),
 {plot(seq_along(Time), Sub_metering_1, type="l", xaxt="n",
       xlab="", ylab="Energy sub metering")
  lines(seq_along(Time), Sub_metering_2, col="red")
  lines(seq_along(Time), Sub_metering_3, col="blue")
  axis(1, at=c(0, 24*60, 2*24*60), labels=c("Thu", "Fri", "Sat"))
  legend("topright", col=c("black", "red", "blue"), lty=1,
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

dev.off()
