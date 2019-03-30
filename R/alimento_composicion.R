alimento.composicion <- function()
{

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
  else if (n1 == 'LEGUMINOSAS')
       {
          db <- dbConnect(SQLite(), dbname="Leguminosas")
  
          nali<-readline(prompt="Leguminosas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Leguminosas where Leguminosas like ?", ali)
  
          library(DT)
          datatable(alimento)
       } 
    else if (n1 == 'TUBERCULOS_HORTALIZAS')
       {
          db <- dbConnect(SQLite(), dbname="Tuberculos_hortalizas")
  
          nali<-readline(prompt="Tuberculos/hortalizas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Tuberculos_hortalizas where Tuberculos_hortalizas like ?", ali)
  
          library(DT)
          datatable(alimento)
       } 
      else if (n1 == 'FRUTOS_FRESCOS')
       {
          db <- dbConnect(SQLite(), dbname="Frutos_frescos")
  
          nali<-readline(prompt="Frutos frescos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Frutos_frescos where Frutos_frescos like ?", ali)
  
          library(DT)
          datatable(alimento)
       } 
}
