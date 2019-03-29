alimentos.composicion.create <- function(){
  install.packages("readxl")
  install.packages("gsubfn")
  install.packages("proto")
  install.packages("RSQLite")
  library("readxl")
  library("gsubfn")
  library("proto")
  library("RSQLite")

  url1<-'https://github.com/BorjaJorge/calorias_diarias/raw/master/R/ficha_alimentacion.xls'
  p1f <- tempfile()
  download.file(url1, p1f, mode="wb")
  cereales<-read_excel(path = p1f, sheet = "Cereales")
  cereales[, (10:50)] <- NULL
  cereales[, (1:1)] <- NULL

  colnames(cereales)[colnames(cereales) == '..2'] <- 'Cereales'
  colnames(cereales)[colnames(cereales) == '..3'] <- 'Estado'
  colnames(cereales)[colnames(cereales) == 'CAL'] <- 'Calorias'
  colnames(cereales)[colnames(cereales) == 'PR'] <- 'Proteina'
  colnames(cereales)[colnames(cereales) == 'GR'] <- 'Grasas'
  colnames(cereales)[colnames(cereales) == 'HC'] <- 'Carbohidratos'
  colnames(cereales)[colnames(cereales) == 'H20'] <- 'Agua'
  colnames(cereales)[colnames(cereales) == 'NE.'] <- 'Cenizas'
  
  leguminosas <- read_excel(path = p1f, sheet = "leguminosas")
  leguminosas[, (10:50)] <- NULL
  leguminosas[, (1:1)] <- NULL

  colnames(leguminosas)[colnames(leguminosas) == '..2'] <- 'Leguminosas'
  colnames(leguminosas)[colnames(leguminosas) == '..3'] <- 'Estado'
  colnames(leguminosas)[colnames(leguminosas) == 'CAL'] <- 'Calorias'
  colnames(leguminosas)[colnames(leguminosas) == 'PR'] <- 'Proteina'
  colnames(leguminosas)[colnames(leguminosas) == 'GR'] <- 'Grasas'
  colnames(leguminosas)[colnames(leguminosas) == 'HC'] <- 'Carbohidratos'
  colnames(leguminosas)[colnames(leguminosas) == 'H20'] <- 'Agua'
  colnames(leguminosas)[colnames(leguminosas) == 'NE.'] <- 'Cenizas'

  tuberculos_hortalizas <- read_excel(path = p1f, sheet = "tuberculos y hortalizas")
  tuberculos_hortalizas[, (10:50)] <- NULL
  tuberculos_hortalizas[, (1:1)] <- NULL

  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == '..2'] <- 'Tuberculos_Hortalizas'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == '..3'] <- 'Estado'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == 'CAL'] <- 'Calorias'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == 'PR'] <- 'Proteina'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == 'GR'] <- 'Grasas'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == 'HC'] <- 'Carbohidratos'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == 'H20'] <- 'Agua'
  colnames(tuberculos_hortalizas)[colnames(tuberculos_hortalizas) == 'NE.'] <- 'Cenizas'

  frutos_frescos <- read_excel(path = p1f, sheet = "frutos frescos")
  frutos_frescos[, (10:50)] <- NULL
  frutos_frescos[, (1:1)] <- NULL

  colnames(frutos_frescos)[colnames(frutos_frescos) == '..2'] <- 'Frutos_frescos'
  colnames(frutos_frescos)[colnames(frutos_frescos) == '..3'] <- 'Estado'
  colnames(frutos_frescos)[colnames(frutos_frescos) == 'CAL'] <- 'Calorias'
  colnames(frutos_frescos)[colnames(frutos_frescos) == 'PR'] <- 'Proteina'
  colnames(frutos_frescos)[colnames(frutos_frescos) == 'GR'] <- 'Grasas'
  colnames(frutos_frescos)[colnames(frutos_frescos) == 'HC'] <- 'Carbohidratos'
  colnames(frutos_frescos)[colnames(frutos_frescos) == 'H20'] <- 'Agua'
  colnames(frutos_frescos)[colnames(frutos_frescos) == 'NE.'] <- 'Cenizas'

  frutos_secos <- read_excel(path = p1f, sheet = "frutos secos")
  frutos_secos[, (10:50)] <- NULL
  frutos_secos[, (1:1)] <- NULL

  colnames(frutos_secos)[colnames(frutos_secos) == '..2'] <- 'Frutos_secos'
  colnames(frutos_secos)[colnames(frutos_secos) == '..3'] <- 'Estado'
  colnames(frutos_secos)[colnames(frutos_secos) == 'CAL'] <- 'Calorias'
  colnames(frutos_secos)[colnames(frutos_secos) == 'PR'] <- 'Proteina'
  colnames(frutos_secos)[colnames(frutos_secos) == 'GR'] <- 'Grasas'
  colnames(frutos_secos)[colnames(frutos_secos) == 'HC'] <- 'Carbohidratos'
  colnames(frutos_secos)[colnames(frutos_secos) == 'H20'] <- 'Agua'
  colnames(frutos_secos)[colnames(frutos_secos) == 'NE.'] <- 'Cenizas'

  lacteos <- read_excel(path = p1f, sheet = "Leche y derivados")
  lacteos[, (10:50)] <- NULL
  lacteos[, (1:1)] <- NULL

  colnames(lacteos)[colnames(lacteos) == '..2'] <- 'Lacteos'
  colnames(lacteos)[colnames(lacteos) == '..3'] <- 'Estado'
  colnames(lacteos)[colnames(lacteos) == 'CAL'] <- 'Calorias'
  colnames(lacteos)[colnames(lacteos) == 'PR'] <- 'Proteina'
  colnames(lacteos)[colnames(lacteos) == 'GR'] <- 'Grasas'
  colnames(lacteos)[colnames(lacteos) == 'HC'] <- 'Carbohidratos'
  colnames(lacteos)[colnames(lacteos) == 'H20'] <- 'Agua'
  colnames(lacteos)[colnames(lacteos) == 'NE.'] <- 'Cenizas'

  Huevos <- read_excel(path = p1f, sheet = "Huevos")
  Huevos[, (10:50)] <- NULL
  Huevos[, (1:1)] <- NULL

  colnames(Huevos)[colnames(Huevos) == '..2'] <- 'Huevos'
  colnames(Huevos)[colnames(Huevos) == '..3'] <- 'Estado'
  colnames(Huevos)[colnames(Huevos) == 'CAL'] <- 'Calorias'
  colnames(Huevos)[colnames(Huevos) == 'PR'] <- 'Proteina'
  colnames(Huevos)[colnames(Huevos) == 'GR'] <- 'Grasas'
  colnames(Huevos)[colnames(Huevos) == 'HC'] <- 'Carbohidratos'
  colnames(Huevos)[colnames(Huevos) == 'H20'] <- 'Agua'
  colnames(Huevos)[colnames(Huevos) == 'NE.'] <- 'Cenizas'

  Dulces <- read_excel(path = p1f, sheet = "Azucares y dulces varios")
  Dulces[, (10:50)] <- NULL
  Dulces[, (1:1)] <- NULL

  colnames(Dulces)[colnames(Dulces) == '..2'] <- 'Dulces'
  colnames(Dulces)[colnames(Dulces) == '..3'] <- 'Estado'
  colnames(Dulces)[colnames(Dulces) == 'CAL'] <- 'Calorias'
  colnames(Dulces)[colnames(Dulces) == 'PR'] <- 'Proteina'
  colnames(Dulces)[colnames(Dulces) == 'GR'] <- 'Grasas'
  colnames(Dulces)[colnames(Dulces) == 'HC'] <- 'Carbohidratos'
  colnames(Dulces)[colnames(Dulces) == 'H20'] <- 'Agua'
  colnames(Dulces)[colnames(Dulces) == 'NE.'] <- 'Cenizas'

  aceites_grasas <- read_excel(path = p1f, sheet = "aceites y grasas")
  aceites_grasas[, (10:50)] <- NULL
  aceites_grasas[, (1:1)] <- NULL

  colnames(aceites_grasas)[colnames(aceites_grasas) == '..2'] <- 'Aceites_Grasas'
  colnames(aceites_grasas)[colnames(aceites_grasas) == '..3'] <- 'Estado'
  colnames(aceites_grasas)[colnames(aceites_grasas) == 'CAL'] <- 'Calorias'
  colnames(aceites_grasas)[colnames(aceites_grasas) == 'PR'] <- 'Proteina'
  colnames(aceites_grasas)[colnames(aceites_grasas) == 'GR'] <- 'Grasas'
  colnames(aceites_grasas)[colnames(aceites_grasas) == 'HC'] <- 'Carbohidratos'
  colnames(aceites_grasas)[colnames(aceites_grasas) == 'H20'] <- 'Agua'
  colnames(aceites_grasas)[colnames(aceites_grasas) == 'NE.'] <- 'Cenizas'

  Pescados <- read_excel(path = p1f, sheet = "Pescados")
  Pescados[, (10:50)] <- NULL
  Pescados[, (1:1)] <- NULL

  colnames(Pescados)[colnames(Pescados) == '..2'] <- 'Pescados'
  colnames(Pescados)[colnames(Pescados) == '..3'] <- 'Estado'
  colnames(Pescados)[colnames(Pescados) == 'CAL'] <- 'Calorias'
  colnames(Pescados)[colnames(Pescados) == 'PR'] <- 'Proteina'
  colnames(Pescados)[colnames(Pescados) == 'GR'] <- 'Grasas'
  colnames(Pescados)[colnames(Pescados) == 'HC'] <- 'Carbohidratos'
  colnames(Pescados)[colnames(Pescados) == 'H20'] <- 'Agua'
  colnames(Pescados)[colnames(Pescados) == 'NE.'] <- 'Cenizas'

  Cerdo <- read_excel(path = p1f, sheet = "Cerdo")
  Cerdo[, (10:50)] <- NULL
  Cerdo[, (1:1)] <- NULL

  colnames(Cerdo)[colnames(Cerdo) == '..2'] <- 'Cerdo'
  colnames(Cerdo)[colnames(Cerdo) == '..3'] <- 'Estado'
  colnames(Cerdo)[colnames(Cerdo) == 'CAL'] <- 'Calorias'
  colnames(Cerdo)[colnames(Cerdo) == 'PR'] <- 'Proteina'
  colnames(Cerdo)[colnames(Cerdo) == 'GR'] <- 'Grasas'
  colnames(Cerdo)[colnames(Cerdo) == 'HC'] <- 'Carbohidratos'
  colnames(Cerdo)[colnames(Cerdo) == 'H20'] <- 'Agua'
  colnames(Cerdo)[colnames(Cerdo) == 'NE.'] <- 'Cenizas'

  Cordero <- read_excel(path = p1f, sheet = "Cordero")
  Cordero[, (10:50)] <- NULL
  Cordero[, (1:1)] <- NULL

  colnames(Cordero)[colnames(Cordero) == '..2'] <- 'Cordero'
  colnames(Cordero)[colnames(Cordero) == '..3'] <- 'Estado'
  colnames(Cordero)[colnames(Cordero) == 'CAL'] <- 'Calorias'
  colnames(Cordero)[colnames(Cordero) == 'PR'] <- 'Proteina'
  colnames(Cordero)[colnames(Cordero) == 'GR'] <- 'Grasas'
  colnames(Cordero)[colnames(Cordero) == 'HC'] <- 'Carbohidratos'
  colnames(Cordero)[colnames(Cordero) == 'H20'] <- 'Agua'
  colnames(Cordero)[colnames(Cordero) == 'NE.'] <- 'Cenizas'

  Ternera <- read_excel(path = p1f, sheet = "Ternera")
  Ternera[, (10:50)] <- NULL
  Ternera[, (1:1)] <- NULL

  colnames(Ternera)[colnames(Ternera) == '..2'] <- 'Ternera'
  colnames(Ternera)[colnames(Ternera) == '..3'] <- 'Estado'
  colnames(Ternera)[colnames(Ternera) == 'CAL'] <- 'Calorias'
  colnames(Ternera)[colnames(Ternera) == 'PR'] <- 'Proteina'
  colnames(Ternera)[colnames(Ternera) == 'GR'] <- 'Grasas'
  colnames(Ternera)[colnames(Ternera) == 'HC'] <- 'Carbohidratos'
  colnames(Ternera)[colnames(Ternera) == 'H20'] <- 'Agua'
  colnames(Ternera)[colnames(Ternera) == 'NE.'] <- 'Cenizas'

  Vaca <- read_excel(path = p1f, sheet = "Vaca")
  Vaca[, (10:50)] <- NULL
  Vaca[, (1:1)] <- NULL

  colnames(Vaca)[colnames(Vaca) == '..2'] <- 'Vaca'
  colnames(Vaca)[colnames(Vaca) == '..3'] <- 'Estado'
  colnames(Vaca)[colnames(Vaca) == 'CAL'] <- 'Calorias'
  colnames(Vaca)[colnames(Vaca) == 'PR'] <- 'Proteina'
  colnames(Vaca)[colnames(Vaca) == 'GR'] <- 'Grasas'
  colnames(Vaca)[colnames(Vaca) == 'HC'] <- 'Carbohidratos'
  colnames(Vaca)[colnames(Vaca) == 'H20'] <- 'Agua'
  colnames(Vaca)[colnames(Vaca) == 'NE.'] <- 'Cenizas'

  Embutidos <- read_excel(path = p1f, sheet = "Embutidos")
  Embutidos[, (10:50)] <- NULL
  Embutidos[, (1:1)] <- NULL

  colnames(Embutidos)[colnames(Embutidos) == '..2'] <- 'Embutidos'
  colnames(Embutidos)[colnames(Embutidos) == '..3'] <- 'Estado'
  colnames(Embutidos)[colnames(Embutidos) == 'CAL'] <- 'Calorias'
  colnames(Embutidos)[colnames(Embutidos) == 'PR'] <- 'Proteina'
  colnames(Embutidos)[colnames(Embutidos) == 'GR'] <- 'Grasas'
  colnames(Embutidos)[colnames(Embutidos) == 'HC'] <- 'Carbohidratos'
  colnames(Embutidos)[colnames(Embutidos) == 'H20'] <- 'Agua'
  colnames(Embutidos)[colnames(Embutidos) == 'NE.'] <- 'Cenizas'

  Aves <- read_excel(path = p1f, sheet = "Aves")
  Aves[, (10:50)] <- NULL
  Aves[, (1:1)] <- NULL

  colnames(Aves)[colnames(Aves) == '..2'] <- 'Aves'
  colnames(Aves)[colnames(Aves) == '..3'] <- 'Estado'
  colnames(Aves)[colnames(Aves) == 'CAL'] <- 'Calorias'
  colnames(Aves)[colnames(Aves) == 'PR'] <- 'Proteina'
  colnames(Aves)[colnames(Aves) == 'GR'] <- 'Grasas'
  colnames(Aves)[colnames(Aves) == 'HC'] <- 'Carbohidratos'
  colnames(Aves)[colnames(Aves) == 'H20'] <- 'Agua'
  colnames(Aves)[colnames(Aves) == 'NE.'] <- 'Cenizas'

  Caza <- read_excel(path = p1f, sheet = "Caza")
  Caza[, (10:50)] <- NULL
  Caza[, (1:1)] <- NULL

  colnames(Caza)[colnames(Caza) == '..2'] <- 'Caza'
  colnames(Caza)[colnames(Caza) == '..3'] <- 'Estado'
  colnames(Caza)[colnames(Caza) == 'CAL'] <- 'Calorias'
  colnames(Caza)[colnames(Caza) == 'PR'] <- 'Proteina'
  colnames(Caza)[colnames(Caza) == 'GR'] <- 'Grasas'
  colnames(Caza)[colnames(Caza) == 'HC'] <- 'Carbohidratos'
  colnames(Caza)[colnames(Caza) == 'H20'] <- 'Agua'
  colnames(Caza)[colnames(Caza) == 'NE.'] <- 'Cenizas'
  
  cereales = as.data.frame(cereales)
  leguminosas = as.data.frame(leguminosas)
  tuberculos_hortalizas = as.data.frame(tuberculos_hortalizas)
  frutos_frescos = as.data.frame(frutos_frescos)
  frutos_secos = as.data.frame(frutos_secos)
  lacteos = as.data.frame(lacteos)
  Huevos = as.data.frame(Huevos)
  Dulces = as.data.frame(Dulces)
  aceites_grasas = as.data.frame(aceites_grasas)
  Pescados = as.data.frame(Pescados)
  Cerdo = as.data.frame(Cerdo)
  Cordero = as.data.frame(Cordero)
  Ternera = as.data.frame(Ternera)
  Vaca = as.data.frame(Vaca)
  Embutidos = as.data.frame(Embutidos)
  Aves = as.data.frame(Aves)
  Caza = as.data.frame(Caza)
  
  library(sqldf)

  db <- dbConnect(SQLite(), dbname="Cereales")

  dbSendQuery(conn = db,
       "CREATE TABLE Cereales
       (Cereales TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Cereales")    

  res <- dbReadTable(db, "Cereales")
  
  dbWriteTable(conn = db, name = "Cereales", value = cereales, append = TRUE)

  dbGetQuery(db, "select * from Cereales")

  dbRemoveTable(db, "Cereales")
  dbListTables(db)
  out <- dbWriteTable(db, "Cereales", cereales)
  
    db <- dbConnect(SQLite(), dbname="Leguminosas")

  dbSendQuery(conn = db,
       "CREATE TABLE Leguminosas
       (Leguminosas TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Leguminosas")    

  res <- dbReadTable(db, "Leguminosas")
  
  dbWriteTable(conn = db, name = "Leguminosas", value = leguminosas, append = TRUE)

  dbGetQuery(db, "select * from Leguminosas")

  dbRemoveTable(db, "Leguminosas")
  dbListTables(db)
  out <- dbWriteTable(db, "Leguminosas", leguminosas)
  
    db <- dbConnect(SQLite(), dbname="Tuberculos_hortalizas")

  dbSendQuery(conn = db,
       "CREATE TABLE Tuberculos_hortalizas
       (Tuberculos_hortalizas TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Tuberculos_hortalizas")    

  res <- dbReadTable(db, "Tuberculos_hortalizas")
  
  dbWriteTable(conn = db, name = "Tuberculos_hortalizas", value = tuberculos_hortalizas, append = TRUE)

  dbGetQuery(db, "select * from Tuberculos_hortalizas")

  dbRemoveTable(db, "Tuberculos_hortalizas")
  dbListTables(db)
  out <- dbWriteTable(db, "Tuberculos_hortalizas", tuberculos_hortalizas)
  
    db <- dbConnect(SQLite(), dbname="Frutos_frescos")

  dbSendQuery(conn = db,
       "CREATE TABLE Frutos_frescos
       (Frutos_frescos TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Frutos_frescos")    

  res <- dbReadTable(db, "Frutos_frescos")
  
  dbWriteTable(conn = db, name = "Frutos_frescos", value = frutos_frescos, append = TRUE)

  dbGetQuery(db, "select * from Frutos_frescos")

  dbRemoveTable(db, "Frutos_frescos")
  dbListTables(db)
  out <- dbWriteTable(db, "Frutos_frescos", frutos_frescos)
  
    db <- dbConnect(SQLite(), dbname="Frutos_secos")

  dbSendQuery(conn = db,
       "CREATE TABLE Frutos_secos
       (Frutos_secos TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Frutos_secos")    

  res <- dbReadTable(db, "Frutos_secos")
  
  dbWriteTable(conn = db, name = "Frutos_secos", value = frutos_secos, append = TRUE)

  dbGetQuery(db, "select * from Frutos_secos")

  dbRemoveTable(db, "Frutos_secos")
  dbListTables(db)
  out <- dbWriteTable(db, "Frutos_secos", frutos_secos)
  
    db <- dbConnect(SQLite(), dbname="Lacteos")

  dbSendQuery(conn = db,
       "CREATE TABLE Lacteos
       (Lacteos TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Lacteos")    

  res <- dbReadTable(db, "Lacteos")
  
  dbWriteTable(conn = db, name = "Lacteos", value = lacteos, append = TRUE)

  dbGetQuery(db, "select * from Lacteos")

  dbRemoveTable(db, "Lacteos")
  dbListTables(db)
  out <- dbWriteTable(db, "Lacteos", lacteos)
  
    db <- dbConnect(SQLite(), dbname="Huevos")

  dbSendQuery(conn = db,
       "CREATE TABLE Huevos
       (Huevos TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Huevos")    

  res <- dbReadTable(db, "Huevos")
  
  dbWriteTable(conn = db, name = "Huevos", value = Huevos, append = TRUE)

  dbGetQuery(db, "select * from Huevos")

  dbRemoveTable(db, "Huevos")
  dbListTables(db)
  out <- dbWriteTable(db, "Huevos", Huevos)
  
    db <- dbConnect(SQLite(), dbname="Dulces")

  dbSendQuery(conn = db,
       "CREATE TABLE Dulces
       (Dulces TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Dulces")    

  res <- dbReadTable(db, "Dulces")
  
  dbWriteTable(conn = db, name = "Dulces", value = Dulces, append = TRUE)

  dbGetQuery(db, "select * from Dulces")

  dbRemoveTable(db, "Dulces")
  dbListTables(db)
  out <- dbWriteTable(db, "Dulces", Dulces)
  
    db <- dbConnect(SQLite(), dbname="aceites_grasas")

  dbSendQuery(conn = db,
       "CREATE TABLE aceites_grasas
       (aceites_grasas TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "aceites_grasas")    

  res <- dbReadTable(db, "aceites_grasas")
  
  dbWriteTable(conn = db, name = "aceites_grasas", value = aceites_grasas, append = TRUE)

  dbGetQuery(db, "select * from aceites_grasas")

  dbRemoveTable(db, "aceites_grasas")
  dbListTables(db)
  out <- dbWriteTable(db, "aceites_grasas", aceites_grasas)
  
    db <- dbConnect(SQLite(), dbname="Pescados")

  dbSendQuery(conn = db,
       "CREATE TABLE Pescados
       (Pescados TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Pescados")    

  res <- dbReadTable(db, "Pescados")
  
  dbWriteTable(conn = db, name = "Pescados", value = Pescados, append = TRUE)

  dbGetQuery(db, "select * from Pescados")

  dbRemoveTable(db, "Pescados")
  dbListTables(db)
  out <- dbWriteTable(db, "Pescados", Pescados)
  
    db <- dbConnect(SQLite(), dbname="Cerdo")

  dbSendQuery(conn = db,
       "CREATE TABLE Cerdo
       (Cerdo TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Cerdo")    

  res <- dbReadTable(db, "Cerdo")
  
  dbWriteTable(conn = db, name = "Cerdo", value = Cerdo, append = TRUE)

  dbGetQuery(db, "select * from Cerdo")

  dbRemoveTable(db, "Cerdo")
  dbListTables(db)
  out <- dbWriteTable(db, "Cerdo", Cerdo)
  
    db <- dbConnect(SQLite(), dbname="Cordero")

  dbSendQuery(conn = db,
       "CREATE TABLE Cordero
       (Cordero TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Cordero")    

  res <- dbReadTable(db, "Cordero")
  
  dbWriteTable(conn = db, name = "Cordero", value = Cordero, append = TRUE)

  dbGetQuery(db, "select * from Cordero")

  dbRemoveTable(db, "Cordero")
  dbListTables(db)
  out <- dbWriteTable(db, "Cordero", Cordero)
  
    db <- dbConnect(SQLite(), dbname="Ternera")

  dbSendQuery(conn = db,
       "CREATE TABLE Ternera
       (Ternera TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Ternera")    

  res <- dbReadTable(db, "Ternera")
  
  dbWriteTable(conn = db, name = "Ternera", value = Ternera, append = TRUE)

  dbGetQuery(db, "select * from Ternera")

  dbRemoveTable(db, "Ternera")
  dbListTables(db)
  out <- dbWriteTable(db, "Ternera", Ternera)
  
    db <- dbConnect(SQLite(), dbname="Vaca")

  dbSendQuery(conn = db,
       "CREATE TABLE Vaca
       (Vaca TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Vaca")    

  res <- dbReadTable(db, "Vaca")
  
  dbWriteTable(conn = db, name = "Vaca", value = Vaca, append = TRUE)

  dbGetQuery(db, "select * from Vaca")

  dbRemoveTable(db, "Vaca")
  dbListTables(db)
  out <- dbWriteTable(db, "Vaca", Vaca)
  
    db <- dbConnect(SQLite(), dbname="Embutidos")

  dbSendQuery(conn = db,
       "CREATE TABLE Embutidos
       (Embutidos TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Embutidos")    

  res <- dbReadTable(db, "Embutidos")
  
  dbWriteTable(conn = db, name = "Embutidos", value = Embutidos, append = TRUE)

  dbGetQuery(db, "select * from Embutidos")

  dbRemoveTable(db, "Embutidos")
  dbListTables(db)
  out <- dbWriteTable(db, "Embutidos", Embutidos)
  
    db <- dbConnect(SQLite(), dbname="Aves")

  dbSendQuery(conn = db,
       "CREATE TABLE Aves
       (Aves TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Aves")    

  res <- dbReadTable(db, "Aves")
  
  dbWriteTable(conn = db, name = "Aves", value = Aves, append = TRUE)

  dbGetQuery(db, "select * from Aves")

  dbRemoveTable(db, "Aves")
  dbListTables(db)
  out <- dbWriteTable(db, "Aves", Aves)
  
    db <- dbConnect(SQLite(), dbname="Caza")

  dbSendQuery(conn = db,
       "CREATE TABLE Caza
       (Caza TEXT,
        Estado TEXT,
        Calorias FLOAT,
        Proteina FLOAT,
        Grasas FLOAT,
        Carbohidratos FLOAT,
        Agua FLOAT,
        Cenizas FLOAT)")

  dbListTables(db)
  dbListFields(db, "Caza")    

  res <- dbReadTable(db, "Caza")
  
  dbWriteTable(conn = db, name = "Caza", value = Caza, append = TRUE)

  dbGetQuery(db, "select * from Caza")

  dbRemoveTable(db, "Caza")
  dbListTables(db)
  out <- dbWriteTable(db, "Caza", Caza)
}
