cereales.composicion <- function(){
  install.packages("readxl")
  library("readxl")

  cereales <- read_excel("https://github.com/BorjaJorge/calorias_diarias/blob/master/R/ficha_alimentacion.xls", sheet = "Cereales")
  cereales[, (10:50)] <- NULL
  cereales[, (1:1)] <- NULL

  colnames(cereales)[colnames(cereales) == '..2'] <- 'Cereales'
  colnames(cereales)[colnames(cereales) == '..3'] <- 'Estado'
  colnames(cereales)[colnames(cereales) == 'CAL'] <- 'Calorias'
  colnames(cereales)[colnames(cereales) == 'PR'] <- 'Proteina'
  colnames(cereales)[colnames(cereales) == 'GR'] <- 'Grasas'
  colnames(cereales)[colnames(cereales) == 'HC'] <- 'Carbohidratos'
  colnames(cereales)[colnames(cereales) == 'H20'] <- 'Agua'
  colnames(cereales)[colnames(cereales) == 'NE.'] <- 'Cenizas'
  
  cereales = as.data.frame(cereales)
  
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
