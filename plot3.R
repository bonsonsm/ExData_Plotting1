#date_time <- function(date, time) {
#    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
#}

source("loadTxt.R")

plot3 <- function(df=NULL) {
    if(is.null(df)){
        df<-loadTxt()    
    }
    #create png 480 by 480 pixels
    png("plot3.png", width=480, height=480)
    
    plot(df$Time, df$Sub_metering_1, 
         ylab="Energy sub metering",
         xlab='',
         type='l',
         COL='black')
    lines(df$Time, df$Sub_metering_2, 
         col='red')
    lines(df$Time, df$Sub_metering_3, 
         col='blue')
    
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
    
    # close dev to create png
    dev.off()
}