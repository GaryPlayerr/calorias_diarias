insulina <- function()

{

 n1<-readline(prompt="Accion de la Insulina (RAPIDA o ULTRARRAPIDA): ")

 library(sqldf)

 if  (n1 == 'ULTRARRAPIDA')

       {

          db <- dbConnect(SQLite(), dbname="insulina_total")

          ultra<-readline(prompt="Seleccione insulina ultrarrapida LISPRO, ASPARTA O  GLULISINA en MAYUSCULAS, espacios todas: " )

          insulina1 <- paste('%', ultra, '%',sep = '')
          
          ultrarrapida <- dbGetQuery(db, "select * from insulina_total where Tipo like ?", insulina1) 
          
          library(DT)

          datatable(ultrarrapida)
       }
       
 else if (n1 == 'RAPIDA')    
 
        {

          db <- dbConnect(SQLite(), dbname="insulina_total")
  
          insulina2 <- paste('RAPID', '%',sep = '')

          rapida <- dbGetQuery(db, "select * from insulina_total where Accion like ?", insulina2)
          
          library(DT)

          datatable(rapida)
       }
 else 
 
         {

          db <- dbConnect(SQLite(), dbname="insulina_total")

          todas <- dbGetQuery(db, "select * from insulina_total")
          
          library(DT)

          datatable(todas)
       }
 
 }
