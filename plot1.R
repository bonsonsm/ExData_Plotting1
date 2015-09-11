#date_time <- function(date, time) {
#    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
#}

source("loadTxt.R")

plot1 <- function(df=NULL) {
    if(is.null(df)){
        df<-loadTxt()    
    }
    #create png 480 by 480 pixels
    png("plot1.png", width=480, height=480)
    
    hist(df$Global_active_power, 
         main="Global Active Power", 
         xlab="Global Active Power (kilowatts)", 
         col="red")
    # close dev to create png
    dev.off()
}