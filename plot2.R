plot2 <- function(file, pngFile = 0) {
    #function builds graph: global active power (in kilowatt) by day
    require(readAndFilterFile)
    
    data <- readAndFilterFile(file)
    
    # Prepare data for hist  
    gapX <- collect(select(data, Date_time))[[1]]    
    gapX <- strptime(gapX, format="%d/%m/20%y %H:%M:%S")
    gapY <- collect(select(data, Global_active_power))[[1]]
    
    if(pngFile != 0) {
        png(file=pngFile, height=480, width=480, bg = "transparent")
    }
    
    
    plot(gapX, gapY, xlab = "", ylab="Global active power (kilowatts)", type="l", lty=1, lwd=2 )
    
    if(pngFile != 0) {
        dev.off()
    }
}