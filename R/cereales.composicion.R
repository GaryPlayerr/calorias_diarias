cereales.composicion <- function(){

  library(sqldf)

  db <- dbConnect(SQLite(), dbname="Cereales")
  
  ncer<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
  cer <- paste('%', ncer, '%',sep = '') 
  dbGetQuery(db, "select * from Cereales where Cereales like ?", cer)
  cereales <- dbGetQuery(db, "select * from Cereales where Cereales like ?", cer)
  
  library(DT)
  datatable(cereales)

}
