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
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       }
 else if (n1 == 'LEGUMINOSAS')
       {
          db <- dbConnect(SQLite(), dbname="Leguminosas")
  
          nali<-readline(prompt="Leguminosas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Leguminosas where Leguminosas like ?", ali)

          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'TUBERCULOS_HORTALIZAS')
       {
          db <- dbConnect(SQLite(), dbname="Tuberculos_hortalizas")
  
          nali<-readline(prompt="Tuberculos/hortalizas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Tuberculos_hortalizas where Tuberculos_hortalizas like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'FRUTOS_FRESCOS')
       {
          db <- dbConnect(SQLite(), dbname="Frutos_frescos")
  
          nali<-readline(prompt="Frutos frescos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Frutos_frescos where Frutos_frescos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'FRUTOS_SECOS')
       {
          db <- dbConnect(SQLite(), dbname="Frutos_secos")
  
          nali<-readline(prompt="Frutos secos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Frutos_secos where Frutos_secos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'LACTEOS')
       {
          db <- dbConnect(SQLite(), dbname="Lacteos")
  
          nali<-readline(prompt="Lacteos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Lacteos where Lacteos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'HUEVOS')
       {
          db <- dbConnect(SQLite(), dbname="Huevos")
  
          nali<-readline(prompt="Huevos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Huevos where Huevos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'DULCES')
       {
          db <- dbConnect(SQLite(), dbname="Dulces")
  
          nali<-readline(prompt="Dulces patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Dulces where Dulces like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'ACEITES_GRASAS')
       {
          db <- dbConnect(SQLite(), dbname="aceites_grasas")
  
          nali<-readline(prompt="Aceites/grasas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from aceites_grasas where aceites_grasas like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       }  
 else if (n1 == 'PESCADOS')
       {
          db <- dbConnect(SQLite(), dbname="Pescados")
  
          nali<-readline(prompt="Pescados patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Pescados where Pescados like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       }  
 else if (n1 == 'CERDO')
       {
          db <- dbConnect(SQLite(), dbname="Cerdo")
  
          nali<-readline(prompt="Cerdo patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cerdo where Cerdo like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'CORDERO')
       {
          db <- dbConnect(SQLite(), dbname="Cordero")
  
          nali<-readline(prompt="Cordero patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cordero where Cordero like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       } 
 else if (n1 == 'TERNERA')
       {
          db <- dbConnect(SQLite(), dbname="Ternera")
  
          nali<-readline(prompt="Ternera patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Ternera where Ternera like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
  
          library(DT)
          datatable(alimento)
       }  
 else if (n1 == 'VACA')
       {
          db <- dbConnect(SQLite(), dbname="Vaca")
  
          nali<-readline(prompt="Vaca patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Vaca where Vaca like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL 
  
          library(DT)
          datatable(alimento)
       }  
 else if (n1 == 'EMBUTIDOS')
       {
          db <- dbConnect(SQLite(), dbname="Embutidos")
  
          nali<-readline(prompt="Embutidos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Embutidos where Embutidos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL 
  
          library(DT)
          datatable(alimento)
       }
 else if (n1 == 'AVES')
       {
          db <- dbConnect(SQLite(), dbname="Aves")
  
          nali<-readline(prompt="Aves patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Aves where Aves like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL 
  
          library(DT)
          datatable(alimento)
       }  
 else if (n1 == 'CAZA')
       {
          db <- dbConnect(SQLite(), dbname="Caza")
  
          nali<-readline(prompt="Caza patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Caza where Caza like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina(cal) <- alimento$Proteina * por * 4
          alimento$Grasas(cal) <- alimento$Grasas * por * 9
          alimento$Carbohidratos(cal)<- alimento$Carbohidratos * por * 4
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL 
  
          library(DT)
          datatable(alimento)
       }   
}
