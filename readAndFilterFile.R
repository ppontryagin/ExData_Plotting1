readAndFilterFile <- function(file) {
    require(data.table)
    library(dplyr)
        
    data <-  fread(file)    
    outcome <- tbl_df(data)
    
    outcome <- filter(outcome, Date == "1/2/2007" | Date == "2/2/2007")
    outcome <- mutate(outcome, Global_active_power = as.double(Global_active_power))
    outcome <- mutate(outcome, Date_time = paste(Date, Time, sep=" "))
    outcome <- mutate(outcome, Date_time = strptime(Date_time, format="%d/%m/20%y %H:%M:%S"))   
    
    outcome

}