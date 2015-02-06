plot4 <- function(file, pngFile = 0) {
    #function builds 4 graphs: 
    require(plot2)    
    require(plot3)
    require(plot5)
    require(plot6)    
    
    if(pngFile != 0) {
        png(file=pngFile, height=480, width=480, bg = "transparent")
    }
    
    par(mfrow=c(2,2))
    
    plot2(file)
    plot5(file)
    plot3(file)
    plot6(file)

    if(pngFile != 0) {
        dev.off()
    }
}