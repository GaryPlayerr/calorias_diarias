
unidades.insulina <- function(){

      

      Fecha <- 	
      Sexo <- n1
      Edad <- n2
      Altura <- n3
      Peso <- n4
      Distancia <- n7
      Tiempo <- n8
      Actividad <-	   
      Calorias_Totales <- calorias
      Calorias_Carbohidratos <- hc
      Calorias_Proteinas <- prot
      Calorias_Grasa <- lip
      Gramos_Carbohidratos
      Dia
      Horaio_Comida
      Alimento
      Glucemia_Real
      Glucemia_Objetivo
      Tipo_Insulina
      FSI
      Ratio
      U_Insulina_Correcion   	 	
      U_Insulina_Comida
      Comentarios <-         

      unidades_insulina <- data.frame(Fecha, Sexo, Edad, Altura, Peso, Distancia, Tiempo, Actividad, Calorias_Totales, Calorias_Carbohidratos, 
                                    Calorias_Proteinas, Calorias_Grasa, Gramos_Carbohidratos, Dia, Horario_Comida, Alimento, Glucemia_Real, 
				    Glucemia_Objetivo, Tipo_Insulina, FSI, Ratio, U_Insulina_Correcion, U_Insulina_Comida, Comentarios)

      library(sqldf)

      db <- dbConnect(SQLite(), dbname="unidades_insulina")
      dbSendQuery(conn = db,

          "CREATE TABLE unidades_insulina
          (Fecha TEXT,
            Sexo TEXT,
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
            Gramos_Carbohidratos FLOAT,
            Dia TEXT,
            Horarios_Comida TEXT,
            Alimento TEXT,
            Glucemia_Real FLOAT,
            Glucemia_Objetivo FLOAT,
            Tipo_Insulina TEXT,
            FSI FLOAT,
            Ratio FLOAT,
            U_Insulina_Correcion FLOAT,
            U_Insulina_Comida FLOAT,
            Comentarios TEXT)")

      dbListTables(db)
      dbListFields(db, "unidades_insulina")    

      res <- dbReadTable(db, "unidades_insulina")

      dbWriteTable(conn = db, name = "unidades_insulina", value = unidades_insulina, append = TRUE)
      dbGetQuery(db, "select * from unidades_insulina")
      dbRemoveTable(db, "unidades_insulina")
      dbListTables(db)
      out <- dbWriteTable(db, "unidades_insulina", unidades_insulina)

}
