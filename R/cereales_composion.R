cereales.composicion <- function(){

  library(sqldf)

  db <- dbConnect(SQLite(), dbname="Cereales")

  dbSendQuery(conn = db,
       "CREATE TABLE Cereales
       (Cereales TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Cereales")    

  res <- dbReadTable(db, "Cereales")
  
  dbWriteTable(conn = db, name = "Cereales", value = cereales, append = TRUE)

  dbGetQuery(db, "select * from Cereales")

  dbRemoveTable(db, "Cereales")
  dbListTables(db)
  out <- dbWriteTable(db, "Cereales", cereales)
  ncer<-readline(prompt="Cereales patron de busqueda: " )
  cer <- paste('%', ncer, '%',sep = '') 
  dbGetQuery(db, "select * from Cereales where Cereales like ?", cer)
  
}
