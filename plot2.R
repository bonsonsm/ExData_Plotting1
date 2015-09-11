#date_time <- function(date, time) {
#    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
#}

source("loadTxt.R")

plot2 <- function(df=NULL) {
    if(is.null(df)){
        df<-loadTxt()    
    }
    #create png 480 by 480 pixels
    png("plot2.png", width=480, height=480)
    
    plot(df$Time, df$Global_active_power, 
         ylab="Global Active Power (kilowatts)",
         xlab='',
         type='l')
    # close dev to create png
    dev.off()
}