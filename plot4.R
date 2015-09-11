#date_time <- function(date, time) {
#    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
#}

source("loadTxt.R")

plot4 <- function(df=NULL) {
    if(is.null(df)){
        df<-loadTxt()    
    }
    #create png 480 by 480 pixels
    png("plot4.png", width=480, height=480)
    
    par(mfrow=c(2,2))
    # 1
    plot(df$Time, df$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power")
    # 2
    plot(df$Time, df$Voltage, type="l",
         xlab="datetime", ylab="Voltage")
    # 3
    plot(df$Time, df$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    lines(df$Time, df$Sub_metering_2, col="red")
    lines(df$Time, df$Sub_metering_3, col="blue")
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1,
           box.lwd=0)
    # 4
    plot(df$Time, df$Global_reactive_power, type="n",
         xlab="datetime", ylab="Global_reactive_power")
    lines(df$Time, df$Global_reactive_power)
    
    # close dev to create png
    dev.off()
}