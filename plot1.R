plot1 <- function(file) {
    #function builds histogram - Global_active_power: household global minute-averaged active power (in kilowatt)
    
    data <- readAndFilterFile(file)
        
    gap <- collect(select(data, Global_active_power))[[1]]
    
    hist(gap, main="Global active power",xlab="Global active power (kilowatts)", , col="red")
}
