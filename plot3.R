plot3 <- function(file, pngFile = 0) {
    #function builds graph: global active power (in kilowatt) by day by meter
    require(readAndFilterFile)    
    
    data <- readAndFilterFile(file)
    
    # Prepare data for hist  
    gapX <- collect(select(data, Date_time))[[1]] 
    gapX <- strptime(gapX, format="%d/%m/20%y %H:%M:%S")
    
    gapY1 <- collect(select(data, Sub_metering_1))[[1]]
    gapY2 <- collect(select(data, Sub_metering_2))[[1]]
    gapY3 <- collect(select(data, Sub_metering_3))[[1]]
    
    col1 <- "black"
    col2 <- "red"
    col3 <- "blue"
    
    if(pngFile != 0) {
        png(file=pngFile, height=480, width=480, bg = "transparent")
    }
        
    #1st meter
    plot(gapX, gapY1, xlab = "", ylab="Energy sub metering", type="l", lty=1, lwd=2, col=col1)
    #2nd meter
    lines(gapX, gapY2, col=col2)
    #3rd meter
    lines(gapX, gapY3, col=col3)
   
    legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  lty=1, lwd=2, col=c(col1, col2, col3), bty='y', cex=.75)
    
    if(pngFile != 0) {
        dev.off()
    }
}
