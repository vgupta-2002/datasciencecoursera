pollutantmean <- function(directory, pollutant, id = 1:332) {

  # Lpad the ids we get
  ids <- sprintf("%03d",id)
  
  # create a data frame
  final <- data.frame()
  
  for (i in ids) {
      files_data<- read.csv(paste(getwd(),"/",directory,"/",as.character(i),".csv",sep=""), 
                            header = T) [ ,c('Date', pollutant)]
    
      final <- rbind(final, files_data)
  }  
  final <- na.omit(final)
  
  return(mean(final[,pollutant]))
  
}