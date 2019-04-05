
unidades.insulina <- function(){

   	library(sqldf)
   	library(lubridate)	
	
	db <- dbConnect(SQLite(), dbname="perfil_insulina")

        unidades <- dbGetQuery(db, "select * from perfil_insulina") 
	
	Fecha1 <- today() 
	Fecha <- as.Date(Fecha1,format="%Y%m%d")
	Fecha <- as.character(Fecha)
        Sexo <- unidades$Sexo
        Edad <- unidades$Edad
        Altura <- unidades$Altura
        Peso <- unidades$Peso
        Distancia <- unidades$Distancia
        Tiempo <- unidades$Tiempo
        Actividad <-unidades$Actividad	   
        Calorias_Totales <- unidades$Calorias_Totales
        Calorias_Carbohidratos <- unidades$Calorias_Carbohidrato
        Calorias_Proteinas <- unidades$Calorias_Proteinas
        Calorias_Grasa <- unidades$Calorias_Grasa
	Horario_Comida <-readline(prompt="Horario de Comida?(DESAYUNO, ALMUERZO, COMIDA, MERIENDA, CENA, RECENA) : " )	
	Alimento <- readline(prompt="Que alimentos vas ingerir? : " )
        Gramos_Carbohidratos <- readline(prompt="Gramos de Carbohidratos?: " )	
	Gramos_Carbohidratos <- as.float(Gramos_Carbohidratos)
	Calorias_Alimento_Carbohidratos <- readline(prompt="Calorias Carbohidratos?: " )	
	Calorias_Alimento_Proteinas <- readline(prompt="Calorias Proteinas?: " )	
	Calorias_Alimento_Grasas <- readline(prompt="Calorias Grasas?: " )
	Dia <- format(as.Date(Fecha1),"%A")
        Glucemia_Real <- readline(prompt="Glucemia Real?: " )
	Glucemia_Real <- as.integer(Glucemia_Real)
        Glucemia_Objetivo <- readline(prompt="Glucemia Objetivo?: " )
	Glucemia_Objetivo <- as.integer(Glucemia_Objetivo)
        Tipo_Insulina <- readline(prompt="Tipo de Insulina?(RAPIDA/ULTRARRAPIDA) : " )
	
	intot <- readline(prompt="Introduce las unidades totales de insulina(lenta+rapida+ultrarrapida) diarias : " )
	intot <- as.integer(intot)
	
	if  (Tipo_Insulina == 'RAPIDA' | Tipo_Insulina == 'rapida')
		{
		FSI <- 1500 / intot
		message('Una Unidad de insulina ultrarrapida hace disminuir :', FSI , 'mg/dl de glucosa')
		}
	else if (Tipo_Insulina == 'ULTRARRAPIDA' | Tipo_Insulina == 'ultrarrapida')
		{
		FSI <- 1800 / intot
		message('Una Unidad de insulina ultrarrapida hace disminuir :', FSI , 'mg/dl de glucosa')
		}
	else
		{
		FSI <- 0
		message('¡¡¡¡¡¡ E R R O R !!!!!!')   
		}

        Ratio <- readline(prompt="Introduce tu Ratio : " )
	Ratio <- as.float(Ratio)
        U_Insulina_Correcion <- (Glucemia_Real - Glucemia_Objetivo) / FSI
	message(U_Insulina_Correcion, ' unidades de insulina de correcion mas que la pauta establecida')
        U_Insulina_Comida <- Ratio * (Gramos_Carbohidratos / 10)
	message(U_Insulina_Comida, ' unidades de insulina para la comida')
        Comentarios <- readline(prompt="Introduce tus comentarios? : " )   
	
	unidades_insulina <- data.frame(
		 Fecha,
		 Sexo,
		 Edad,
		 Altura,
		 Peso,
		 Distancia,
		 Tiempo,
		 Actividad,
		 Calorias_Totales,
		 Calorias_Carbohidratos, 
		 Calorias_Proteinas,
		 Calorias_Grasa, 
		 Gramos_Carbohidratos,
		 Calorias_Alimento_Carbohidratos,
		 Calorias_Alimento_Proteinas, 
		 Calorias_Alimento_Grasas,
		 Dia, 
		 Horario_Comida, 
		 Alimento, 
		 Glucemia_Real, 
		 Glucemia_Objetivo, 
		 Tipo_Insulina,
		 FSI,
		 Ratio,
		 U_Insulina_Correcion,
		 U_Insulina_Comida,
		 Comentarios)
	
   	crearbbdd <-readline(prompt="Usuario Nuevo?(S/N) : " ) 
   	if  (crearbbdd == 'S' | crearbbdd == 's')
       		{		

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
		Calorias_Alimento_Carbohidratos,
		Calorias_Alimento_Proteinas,
		Calorias_Alimento_Grasas,
            	Dia TEXT,
            	Horario_Comida TEXT,
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

      		dbGetQuery(db, "select * from unidades_insulina")
      		dbRemoveTable(db, "unidades_insulina")
      		dbListTables(db)
      		dbWriteTable(db, "unidades_insulina", unidades_insulina, append = TRUE)
		dbDisconnect(db)
	       }

   		else if (crearbbdd == 'N' | crearbbdd == '' | crearbbdd == 'n')
	      	{
	      
	      	modifbbdd <- readline(prompt="Usuario ya registrado. Incorporar registro a BBDD?(S/N) : " ) 
	      
	      	if  (modifbbdd == 'S' | modifbbdd == 's')
		  {
	      	
			db <- dbConnect(SQLite(), dbname="unidades_insulina")   
      			dbListTables(db)
      			dbListFields(db, "unidades_insulina")    

      			res <- dbReadTable(db, "unidades_insulina")

      			dbWriteTable(conn = db, name = "unidades_insulina", value = unidades_insulina, append = TRUE)
			dbDisconnect(db)
    
	          }
	        }
}
