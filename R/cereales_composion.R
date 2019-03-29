cereales.composicion <- function(){
  install.packages("readxl")
  install.packages("gsubfn")
  install.packages("proto")
  install.packages("RSQLite")
  library("readxl")
  library("gsubfn")
  library("proto")
  library("RSQLite")

  url1<-'https://github.com/BorjaJorge/calorias_diarias/raw/master/R/ficha_alimentacion.xls'
  p1f <- tempfile()
  download.file(url1, p1f, mode="wb")
  cereales<-read_excel(path = p1f, sheet = "Cereales")
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
