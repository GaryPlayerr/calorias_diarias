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
  
          print('1 - LISPRO')
          print('2 - ASPARTA')  
          print('3 - GLULISINA')
          print('Cualquier otra opcion se listan todos los tipos de ultrarrapidas')
          ultraop <-readline(prompt="Introduce una opcion:")
          if  (ultraop != 1 & ultraop != 2 & ultraop != 3){ultra <- ''} 
          if  (ultraop == 1){ultra <- 'LISPRO'}
          if  (ultraop == 2){ultra <- 'ASPARTA'}
          if  (ultraop == 3){ultra <- 'GLULISINA'}
  
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

          datatable(ultrarrapida, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Insulina ultrarrapida.', filter = 'top')
       }
       
 else if (n1 == 1)    
 
        {

          db <- dbConnect(SQLite(), dbname="insulina_total")
  
          insulina2 <- paste('RAPID', '%',sep = '')

          rapida <- dbGetQuery(db, "select * from insulina_total where Accion like ?", insulina2)
          
          library(DT)

          datatable(rapida, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Insulina rapida.', filter = 'top')
       }
 else 
 
         {

          db <- dbConnect(SQLite(), dbname="insulina_total")

          todas <- dbGetQuery(db, "select * from insulina_total")
          
          library(DT)

          datatable(todas, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'insulinas.', filter = 'top')
       }
 
 }
