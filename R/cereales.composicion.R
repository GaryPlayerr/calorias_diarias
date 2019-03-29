cereales.composicion <- function(){

  library(sqldf)

  db <- dbConnect(SQLite(), dbname="Cereales")
  
  ncer<-readline(prompt="Cereales patron de busqueda: " )
  cer <- paste('%', ncer, '%',sep = '') 
  dbGetQuery(db, "select * from Cereales where Cereales like ?", cer)
  cereales <- dbGetQuery(db, "select * from Cereales where Cereales like ?", cer)
  
  install.packages("DT")
  library(DT)
  datatable(cereales)

}
