
unidades.insulina <- function(){

   	library(sqldf)
   	library(lubridate)	
	
	db <- dbConnect(SQLite(), dbname="perfil_insulina")

        unidades_insulina <- dbGetQuery(db, "select * from perfil_insulina") 
	   
        Fecha <- today()	
        Sexo <- unidades_insulina$Sexo
        Edad <- unidades_insulina$Edad
        Altura <- unidades_insulina$Altura
        Peso <- unidades_insulina$Peso
        Distancia <- unidades_insulina$Distancia
        Tiempo <- unidades_insulina$Tiempo
        Actividad <-'OOO'	   
        Calorias_Totales <- unidades_insulina$calorias
        Calorias_Carbohidratos <- unidades_insulina$hc
        Calorias_Proteinas <- unidades_insulina$prot
        Calorias_Grasa <- unidades_insulina$lip
	Horario_Comida <-readline(prompt="Horario de Comida?(DESAYUNO, ALMUERZO, COMIDA, MERIENDA, CENA, RECENA) : " )	
	Alimento <- readline(prompt="Que alimentos vas ingerir? : " )
        Gramos_Carbohidratos <- readline(prompt="Gramos de Carbohidratos?: " )	
	Calorias_Alimento_Carbohidratos <- readline(prompt="Calorias Carbohidratos?: " )	
	Calorias_Alimento_Proteinas <- readline(prompt="Calorias Proteinas?: " )	
	Calorias_Alimento-Grasas <- readline(prompt="Calorias Grasas?: " )	
        w <- wday(Fecha)	
        Dia <- wday(Fecha, label = TRUE) 
        Glucemia_Real <- 0
        Glucemia_Objetivo <- 0
        Tipo_Insulina <- readline(prompt="Tipo de Insulina?(RAPIDA/ULTRARRAPIDA) : " )
        FSI <- 0
        Ratio <- 0
        U_Insulina_Correcion <- 0  	 	
        U_Insulina_Comida <- 0
        Comentarios <- readline(prompt="Introduce tus comentarios? : " )   
	   
	unidades_insulina <- data.frame(Fecha, Sexo, Edad, Altura, Peso, Distancia, Tiempo, Actividad, Calorias_Totales, Calorias_Carbohidratos, 
                            Calorias_Proteinas, Calorias_Grasa, Gramos_Carbohidratos, Calorias_Alimento_Carbohidratos, Calorias_Alimento_Proteinas, 
			    Calorias_Alimento_Grasas, Dia, Horario_Comida, Alimento, Glucemia_Real, 
			    Glucemia_Objetivo, Tipo_Insulina, FSI, Ratio, U_Insulina_Correcion, U_Insulina_Comida, Comentarios)

	   
	
   	crearbbdd <-readline(prompt="Usuario Nuevo?(S/N) : " ) 
   	if  (crearbbdd == 'S')
       		{		

		db <- dbConnect(SQLite(), dbname="unidades_insulina")   
        	dbSendQuery(conn = db,

          	"CREATE TABLE unidades_insulina
          	(Fecha DATE,
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
		Calorias_Alimento_Carbohidratos,
		Calorias_Alimento_Proteinas,
		Calorias_Alimento_Grasas,
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

   		else if (crearbbdd == 'N' | crearbbdd == '')
	      	{
	      
	      	modifbbdd <- readline(prompt="Usuario ya regfistrado. Modificar BBDD?(S/N) : " ) 
	      
	      	if  (modifbbdd == 'S')
		  {
	      	
      			dbListTables(db)
      			dbListFields(db, "unidades_insulina")    

      			res <- dbReadTable(db, "unidades_insulina")

      			dbWriteTable(conn = db, name = "unidades_insulina", value = unidades_insulina, append = TRUE)
      			dbGetQuery(db, "select * from unidades_insulina")
      			dbRemoveTable(db, "unidades_insulina")
      			dbListTables(db)
      			out <- dbWriteTable(db, "unidades_insulina", unidades_insulina)	      
	          }
	        }
}
