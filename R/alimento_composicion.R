alimento.composicion <- function(){

  n1<-readline(prompt="Tipo de alimemento(CEREALES, LEGUMINOSAS, TUBERCULOS_HORTALIZAS, FRUTOS_FRESCOS,FRUTOS_SECOS, 
  LACTEOS, HUEVOS, DULCES, ACEITES_GRASAS, PESCADOS, CERDO, CORDERO, TERNERA, VACA, EMBUTIDOS, AVES, CAZA): ")
  
  library(sqldf)

  if  (n1 == 'CEREALES')
       {
          db <- dbConnect(SQLite(), dbname="Cereales")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'LEGUMINOSAS')
       {
          db <- dbConnect(SQLite(), dbname="Leguminosas")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Leguminosas where Leguminosas like ?", ali)
  
          library(DT)
          datatable(alimento)
       } 
  if  (n1 == 'TUBERCULOS_HORTALIZAS')
       {
          db <- dbConnect(SQLite(), dbname="Tuberculos_hortalizas")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
  if  (n1 == 'FRUTOS_FRESCOS')
       {
          db <- dbConnect(SQLite(), dbname="Frutos_frescos")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'FRUTOS_SECOS')
       {
          db <- dbConnect(SQLite(), dbname="Frutos_secos")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'LACTEOS')
       {
          db <- dbConnect(SQLite(), dbname="Lacteos")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'HUEVOS')
       {
          db <- dbConnect(SQLite(), dbname="Huevos")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'DULCES')
       {
          db <- dbConnect(SQLite(), dbname="Dulces")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'ACEITES_GRASAS')
       {
          db <- dbConnect(SQLite(), dbname="aceites_grasas")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'PESCADOS')
       {
          db <- dbConnect(SQLite(), dbname="Pescados")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'CERDO')
       {
          db <- dbConnect(SQLite(), dbname="Cerdo")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'CORDERO')
       {
          db <- dbConnect(SQLite(), dbname="Cordero")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'TERNERA')
       {
          db <- dbConnect(SQLite(), dbname="Ternera")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'VACA')
       {
          db <- dbConnect(SQLite(), dbname="Vaca")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'EMBUTIDOS')
       {
          db <- dbConnect(SQLite(), dbname="Embutidos")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'AVES')
       {
          db <- dbConnect(SQLite(), dbname="Aves")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
   if  (n1 == 'CAZA')
       {
          db <- dbConnect(SQLite(), dbname="Caza")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          library(DT)
          datatable(alimento)
       }
}
