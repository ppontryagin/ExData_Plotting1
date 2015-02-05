readAndFilterFile <- function(file) {
    require(data.table)
    library(dplyr)
        
    data <-  fread(file)    
    outcome <- tbl_df(DT)
    
    outcome <- filter(o, Date == "1/2/2007" | Date == "2/2/2007")
    outcome <- mutate(outcome, Global_active_power = as.double(Global_active_power))
    outcome

}