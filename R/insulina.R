insulina <- function()

{

 print('1 - Insulina RAPIDA: ')
 print('2 - Insulina ULTRARRAPIDA: ') 
 print('Cualquier otra opcion lista todos los tipos de insulina') 
 n1<-readline(prompt="Introduce una opcion: ")

 library(sqldf)

 if  (n1 == 2)

       {

          db <- dbConnect(SQLite(), dbname="insulina_total")

          ultra<-readline(prompt="Seleccione insulina ultrarrapida LISPRO, ASPARTA O  GLULISINA en MAYUSCULAS, espacios todas: " )

          if  (ultra == '')
            {
           
              insulina1 <- paste('ULTRA', '%',sep = '') 
              ultrarrapida <- dbGetQuery(db, "select * from insulina_total where Accion like ?", insulina1) 
           
            }
  
          else 
            {
              insulina1 <- paste('%', ultra, '%',sep = '')
          
              ultrarrapida <- dbGetQuery(db, "select * from insulina_total where Tipo like ?", insulina1) 
            }
  
          library(DT)

          datatable(ultrarrapida)
       }
       
 else if (n1 == 1)    
 
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
