complete <- function(directory, id = 1:332) {
  
  # Lpad the ids we get
  ids <- sprintf("%03d",id)
  
  # create a data frame
  final <- data.frame()
  
  for (i in ids) {
    files_data<- read.csv(paste(getwd(),"/",directory,"/",as.character(i),".csv",sep=""), 
                          header = T)
    
    data <- data.frame(id = i, nobs = sum(complete.cases(files_data)))
    final <- rbind(final,data)
  }  
  
  return(final)
  
}