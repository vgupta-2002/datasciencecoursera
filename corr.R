corr <- function(directory, threshold = 0) {
  
  # Lpad the ids we get
  ids <- sprintf("%03d",1:332)

  final <- NULL
  
  for (i in ids) {
    files_data<- read.csv(paste(getwd(),"/",directory,"/",as.character(i),".csv",sep=""), 
                          header = T)
    data <- files_data[complete.cases(files_data),]
    
    if (nrow(data) > threshold) {
      final <- c(final, cor(data[,"sulfate"], data[, "nitrate"]))
    }
    
  }  
  
  return(final)
  
}