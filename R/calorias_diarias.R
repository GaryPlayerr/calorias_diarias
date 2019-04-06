calorias.diarias <- function(){

  n1<-readline(prompt="Sexo(M/F): " )
  n7 <- 0
  n8 <- 0
  n9 <- 'N'
  n10 <- 'N'
  n11 <- 'N'
  tabla1 <- 'S'
  
  if (n1 != 'M' & n1 != 'F')
    {
      message('ERROR, teclea M o F')
      n1<-readline(prompt="Sexo(M/F): " )
    
      while (n1 != 'M' & n1 != 'F')
        {
      
         message('ERROR, teclea M o F')
         n1<-readline(prompt="Sexo(M/F): " )
        } 
    }
    
  n2<-readline(prompt="Edad: " )
  n3<-readline(prompt="Altura (cm): " )
  n4<-readline(prompt="Peso (kg): " )
  
  n2<-as.integer(n2)
  n3<-as.integer(n3)
  n4<-as.integer(n4)
  
  if  (n1 == 'M')
    {
      TMB = (10 * n4) + (6.25 * n3) - (5 * n2) + 5 
    }
  else if  (n1 == 'F')
    {
      TMB = (10 * n4) + (6.25 * n3) - (5 * n2) - 161     
    }
  
  print('1 - Caminas o corres?')
  print('2 - Montas en bici?')
  print('3 - Nadas?')
  print('4 - otras actividades o NO haces ningun deporte')
  
  depor <- readline(prompt="Introduce una opcion: " )
  
  while (depor != 1 & depor != 2 & depor != 3 & depor != 4)
    {
      depor <- readline(prompt="Introduce una opcion valida: " )
    }
  
  if  (depor == 1)
    {
    n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
    
    while (n6 != 'S' & n6 != 's' & n6 != 'N' & n6 != 'n' & n6 != '')
      {
         n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
      }
  
    if  (n6 == 'N' | n6 == '' | n6 == 'n')
      {
        n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
    
        while (n5 != 1 & n5 != 2 & n5 != 3 & n5 != 4 & n5 != 5)
          {
            n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
          }
          if  (n5 == '5')
              {
                calorias = TMB * 1.9
              }
          else if  (n5 == '4')
              {
                calorias = TMB * 1.725
              }
          else if  (n5 == '3')
              {
                calorias = TMB * 1.55
              }  
          else if  (n5 == '2')
              {
                calorias = TMB * 1.375
              }
          else if  (n5 == '1' | n5 == '')
              {
                calorias = TMB * 1.2
              }
      }
    else if  (n6 == 'S' | n6 == 's')
      {
        n7<-readline(prompt="Distancia(km) : " ) 
        n8<-readline(prompt="Tiempo(minutos) : " ) 
        n5<- 0
        n7<-as.integer(n7)
        n8<-as.integer(n8)
    
        horas = n8 / 60
        vel = n7 / horas
      
        cal = 14.26 * n8 + 46.66 * vel + 8.55 * n4 - 1164.85  
        calorias = TMB + cal 
      }  
    }
  else if (depor == 2)
    {
    n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
    
    while (n6 != 'S' & n6 != 's' & n6 != 'N' & n6 != 'n' & n6 != '')
      {
         n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
      }
    
    if  (n6 == 'N' | n6 == '' | n6 == 'n')
      {
        n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
    
        while (n5 != 1 & n5 != 2 & n5 != 3 & n5 != 4 & n5 != 5)
          {
            n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
          }
          if  (n5 == '5')
              {
                calorias = TMB * 1.9
              }
          else if  (n5 == '4')
              {
                calorias = TMB * 1.725
              }
          else if  (n5 == '3')
              {
                calorias = TMB * 1.55
              }  
          else if  (n5 == '2')
              {
                calorias = TMB * 1.375
              }
          else if  (n5 == '1' | n5 == '')
              {
                calorias = TMB * 1.2
              } 
      }
    else if  (n6 == 'S' | n6 == 's')
      {
        n7<-readline(prompt="Distancia(km) : " ) 
        n8<-readline(prompt="Tiempo(minutos) : " ) 
        n5<- 0
        n7<-as.integer(n7)
        n8<-as.integer(n8)
    
        horas = n8 / 60
        vel = n7 / horas
      
       if  (vel < 16){cal = 4 * 0.0175 * n4 * n8}
       else if (vel >= 16 & vel < 19){cal = 6 * 0.0175 * n4 * n8}
       else if (vel >= 19 & vel < 22.5){cal = 8 * 0.0175 * n4 * n8}
       else if (vel >= 22.5 & vel < 24){cal = 10 * 0.0175 * n4 * n8}
       else if (vel >= 24 & vel < 35){cal = 12 * 0.0175 * n4 * n8}
       else if (vel > 39 ){cal = 15 * 0.0175 * n4 * n8}
       else {cal = 8 * 0.0175 * n4 * n8}      
      
       calorias = TMB + cal 
      }  
    }      
 
   else if (depor == 3)
    {
    n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
    
    while (n6 != 'S' & n6 != 's' & n6 != 'N' & n6 != 'n' & n6 != '')
      {
         n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
      }
    
    if  (n6 == 'N' | n6 == '' | n6 == 'n')
      {
        n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
    
        while (n5 != 1 & n5 != 2 & n5 != 3 & n5 != 4 & n5 != 5)
          {
            n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
          }
          if  (n5 == '5')
              {
                calorias = TMB * 1.9
              }
          else if  (n5 == '4')
              {
                calorias = TMB * 1.725
              }
          else if  (n5 == '3')
              {
                calorias = TMB * 1.55
              }  
          else if  (n5 == '2')
              {
                calorias = TMB * 1.375
              }
          else if  (n5 == '1' | n5 == '')
              {
                calorias = TMB * 1.2
              } 
      }
    else if  (n6 == 'S' | n6 == 's')
      {
        n7<-readline(prompt="Distancia(km) : " ) 
        n8<-readline(prompt="Tiempo(minutos) : " ) 
        n5<- 0
        n7<-as.integer(n7)
        n8<-as.integer(n8)
    
        horas = n8 / 60
        vel = n7 / horas
      
        cal = 10 * 0.0175 * n4 * n8
        calorias = TMB + cal
       
      }  
    }  
    
  else if  (depor == 4)
    {
  
    print('S - Quieres ver las calorias que quemarias en otros tipos de entrenamiento?:')
    print('N - No haces ningun tipo de ejercicio')
    tabla1<-readline(prompt="Introduce una opcion (S/N):")
  
    while (tabla1 != 'S' & tabla1 != 's' & tabla1 != 'N' & tabla1 != 'n' & tabla1 != '')
      {
        tabla1<-readline(prompt="Introduce una opcion(S/N) : " ) 
      }
  
    if  (tabla1 == 'S' | tabla1 == 's')
      {
        library("readxl")
    
        n8<-readline(prompt="Tiempo(minutos) : " )
        n8<-as.integer(n8)
        tabla1 <- 'S'
        url1<-'https://github.com/BorjaJorge/calorias_diarias/raw/master/R/MET.xlsx'
        p1f <- tempfile()
        download.file(url1, p1f, mode="wb")
        tabla<-read_excel(path = p1f)
        tabla$Calorias_que_quemarias <- tabla$Calorias * 0.0175 * n4 * n8
        tabla$Calorias <- NULL
        library(DT)
        datatable(tabla, options = list(), class = "display",
        callback = JS("return table;"))
    
      }
    else if (tabla1 == 'N' | tabla1 == 'n' | tabla1 =='')
      {
        calorias = TMB
      }
  
    }
   
  message("Calorias metabolismo basal:", TMB)
  
  if  (depor == 4 & tabla1 == 'S')
    {
#        caldep<-readline(prompt="Introduce las calorias del deporte que has elegido : " ) 
        caldep <- 100
        caldep <- as.numeric(caldep) 
        calorias = TMB + caldep
    }
  
  message("Calorias metabolismo basal mas ejercicio:", calorias)
  
  modif<-readline(prompt="Quieres modificar tus calorias(S/N)?: " )
  
  while (modif != 'S' & modif != 's' & modif != 'N' & modif != 'n' & modif != '')
    {
      modif<-readline(prompt="Quieres modificar tus calorias(S/N)?: " )
    }
  
  if  (modif == 'S' | modif == 's')
      {
    
        calorias<-readline(prompt="Introduce nuevo valor de calorias: " )
        calorias<-as.integer(calorias)
    
      }
  
  hc <- calorias * 0.6
  prot <- calorias * 0.15
  lip <- calorias * 0.25
  lip_veg <- lip * 0.7
  lip_an <- lip * 0.3
  lip_sat <- calorias * 0.07

  message("Calorias Hidratos de carbono: ", hc)
  message("Calorias Proteina: ", prot)
  message("Calorias Grasa total: ", lip)
  cat("Grasa vegetal: ", lip_veg, " ; Grasa animal: ", lip_an," ; Grasa saturada < ", lip_sat)
  
  crearbbdd <-readline(prompt="Usuario Nuevo?(S/N) : " ) 
  
  while (crearbbdd != 'S' & crearbbdd != 's' & crearbbdd != 'N' & crearbbdd != 'n' & crearbbdd != '')
    {
      crearbbdd <-readline(prompt="Usuario Nuevo?(S/N) : " ) 
    }
  
  if  (crearbbdd == 'N' | crearbbdd == '' | crearbbdd == 'n')
    {
  
      modifbbdd <- readline(prompt="Usuario ya registrado. Modificar BBDD?(S/N) : " ) 
    
      while (modifbbdd != 'S' & modifbbdd != 's' & modifbbdd != 'N' & modifbbdd != 'n' & modifbbdd != '')
        {
          modifbbdd <- readline(prompt="Usuario ya regfistrado. Modificar BBDD?(S/N) : " ) 
        }
    
      if  (modifbbdd == 'S' | modifbbdd == 's')
          {

            library(sqldf)
      
            Sexo <- n1
            Edad <- n2
            Altura <- n3
            Peso <- n4
            Distancia <- n7
            Tiempo <- n8

            if  (depor == 4 & tabla1 == 'S'){Actividad <- 'Otros'}
            else if  (depor == 1){Actividad <- 'Caminas o Corres'}
            else if (depor == 2){Actividad <- 'Bicicleta'}
            else if (depor == 3){Actividad <- 'Natacion'}  
            else if (depor == 4 & tabla1 == 'N'){Actividad <- 'No Ejercicio'} 

            Calorias_Totales <- calorias
            Calorias_Carbohidratos <- hc
            Calorias_Proteinas <- prot
            Calorias_Grasa <- lip
            Grasa_Vegetal <- lip_veg
            Grasa_Animal <- lip_an
            Calorias_Metabolismo <- TMB
            Comentarios <- 'PERFIL UPDATED'         
    
            perfil_insulina <- data.frame(Sexo,Edad, Altura, Peso, Distancia, Tiempo, Actividad, Calorias_Totales, Calorias_Carbohidratos, 
                               Calorias_Proteinas, Calorias_Grasa, Grasa_Vegetal, Grasa_Animal, Calorias_Metabolismo, Comentarios)      
            
            db <- dbConnect(SQLite(), dbname="perfil_insulina")
        
            dbGetQuery(db, "select * from perfil_insulina")

            dbListTables(db)
            dbWriteTable(db, "perfil_insulina", perfil_insulina, overwrite=TRUE)
            dbDisconnect(db)
               
          }
    }

  else
    {
  
      Sexo <- n1
      Edad <- n2
      Altura <- n3
      Peso <- n4
      Distancia <- n7
      Tiempo <- n8
      
      if  (depor == 4 & tabla1 == 'S'){Actividad <- 'Otros'}
      else if  (depor == 1){Actividad <- 'Caminas o Corres'}
      else if (depor == 2){Actividad <- 'Bicicleta'}
      else if (depor == 3){Actividad <- 'Natacion'}  
      else if (depor == 4 & tabla1 == 'N'){Actividad <- 'No Ejercicio'}      
      
      Calorias_Totales <- calorias
      Calorias_Carbohidratos <- hc
      Calorias_Proteinas <- prot
      Calorias_Grasa <- lip
      Grasa_Vegetal <- lip_veg
      Grasa_Animal <- lip_an
      Calorias_Metabolismo <- TMB
      Comentarios <- 'PERFIL'         
    
      perfil_insulina <- data.frame(Sexo,Edad, Altura, Peso, Distancia, Tiempo, Actividad, Calorias_Totales, Calorias_Carbohidratos, 
                                    Calorias_Proteinas, Calorias_Grasa, Grasa_Vegetal, Grasa_Animal, Calorias_Metabolismo, Comentarios)
    
      library(sqldf)

      db <- dbConnect(SQLite(), dbname="perfil_insulina")

      dbSendQuery(conn = db,

          "CREATE TABLE perfil_insulina
          ( Sexo TEXT,
            Edad FLOAT,
            Altura FLOAT,
            Peso FLOAT,
            Distancia FLOAT,
            Tiempo FLOAT,
            Actividad TEXT,
            Calorias_Totales FLOAT,
            Calorias_Carbohidratos FLOAT,
            Calorias_Proteinas FLOAT,
            Calorias_Grasa FLOAT,
            Grasa_Vegetal FLOAT,
            Grasa_Animal FLOAT,
            Calorias_Metabolismo FLOAT,
            Comentarios TEXT)")

      dbListTables(db)
      dbListFields(db, "perfil_insulina")    

      res <- dbReadTable(db, "perfil_insulina")
      dbWriteTable(conn = db, name = "perfil_insulina", value = perfil_insulina, append = TRUE)
      dbDisconnect(db)
    
    }
  

}
