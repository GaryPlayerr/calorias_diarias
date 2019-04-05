perfil.insulina <- function()

{
          print ('0 - Consultar todas las dietas')
          print ('1 - Consultar por fecha o patron de fecha.(Anio, mes, dia, anio-mes, mes-dia,...)')
          print ('2 - Consultar por dia de la semana.(LUNES, MARTES,....,DOMINGO)')
          print ('3 - Consultar por horario de comida (DESAYUNO, ALMUERZO, COMIDA, MERIENDA, CENA, RECENA)')
          
          opcion<-readline(prompt="Introduce una opcion: " )
          
          if  (opcion == 0 | opcion == '')
              {
                    
                    library(sqldf)
                    db <- dbConnect(SQLite(), dbname="unidades_insulina")
                    unidades <- dbGetQuery(db, "select * from unidades_insulina") 
                    library(DT)
                    datatable(unidades)  
              }                    
          
          if  (opcion == 1)
              {
                    fec<-readline(prompt="Introduce fecha o patron(AAAA-MM-DD): " )
                    filtro <- paste('%', fec, '%',sep = '') 
                    unidades <- dbGetQuery(db, "select * from unidades_insulina where Fecha like ?", filtro) 
                    library(DT)
                    datatable(unidades)           
          
              }      

          if  (opcion == 2)
              {
                    dia<-readline(prompt="Introduce dia de la semana : " )
                    if  (dia == 'LUNES'){dia <- 'lunes'}
                    if  (dia == 'MARTES'){dia <- 'martes'}
                    if  (dia == 'MIERCOLES'){dia <- 'miercoles'}
                    if  (dia == 'JUEVES'){dia <- 'jueves'}
                    if  (dia == 'VIERNES'){dia <- 'viernes'}
                    if  (dia == 'SABADO'){dia <- 'sabado'}
                    if  (dia == 'DOMINGO'){dia <- 'domingo'}
                    
                    filtro <- paste('%', dia, '%',sep = '') 
                    unidades <- dbGetQuery(db, "select * from unidades_insulina where Dia like ?", filtro)
                    library(DT)
                    datatable(unidades)           
          
              }            
    
          if  (opcion == 3)
              {
                    hor<-readline(prompt="Introduce horario de comida (DESAYUNO, ALMUERZO, COMIDA, MERIENDA, CENA, RECENA): " )
                    if  (hor == 'desayuno'){hor <- 'DESAYUNO'}
                    if  (hor == 'almuerzo'){hor <- 'ALMUERZO'}
                    if  (hor == 'comida'){hor <- 'COMIDA'}
                    if  (hor == 'merienda'){hor <- 'MERIENDA'}
                    if  (hor == 'cena'){hor <- 'CENA'}
                    if  (hor == 'recena'){hor <- 'RECENA'}
                    
                    filtro <- paste('%', hor, '%',sep = '') 
                    unidades <- dbGetQuery(db, "select * from unidades_insulina where Horario_Comida like ?", filtro) 
                    library(DT)
                    datatable(unidades)           
          
              }           
          
   }
