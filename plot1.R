plot1 <- function(file, pngFile) {
    #function builds histogram - Global_active_power: household global minute-averaged active power (in kilowatt)
    
    data <- readAndFilterFile(file)
     
    # Prepare data for hist  
    gap <- collect(select(data, Global_active_power))[[1]]
    
    png(file=pngFile, height=480, width=480, bg = "transparent")
    hist(gap, main="Global active power",xlab="Global active power (kilowatts)", , col="red")
    dev.off()
}
