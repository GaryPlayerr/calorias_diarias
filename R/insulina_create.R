insulina.create <- function(){

  library(DT)
  install.packages("rvest")
  library(rvest)

  insulina_lispro<- read_html("https://www.vademecum.es/principios-activos-insulina+lispro-a10ab04") 

  lista_insulina_lispro <-
    insulina_lispro %>%
    html_nodes(css = "div.listamedic") %>%
    html_text()

  lispro1 <- str_split(lista_insulina_lispro, '\n')
  lispro2 <- data.frame(lispro1)
  lispro2 <- lispro2[5:100,]
  lispro3 <- data.frame(lispro2)
  lispro3 <- lispro3[!is.na(lispro3$lispro2),]
  lispro3 <- data.frame(lispro3)
  colnames(lispro3)[colnames(lispro3) == 'lispro3'] <- 'Insulina' 
  lispro3$Accion <- 'ULTRARRAPIDA'
  lispro3$Tipo   <- 'LISPRO'

  insulina_asparta<- read_html("https://www.vademecum.es/principios-activos-insulina+asparta-a10ab05") 

  lista_insulina_asparta <-
    insulina_asparta %>%
    html_nodes(css = "div.listamedic") %>%
    html_text()

  asparta1 <- str_split(lista_insulina_asparta, '\n')
  asparta2 <- data.frame(asparta1)
  asparta2 <- asparta2[5:100,]
  asparta3 <- data.frame(asparta2)
  asparta3 <- asparta3[!is.na(asparta3$asparta2),]
  asparta3 <- data.frame(asparta3)
  colnames(asparta3)[colnames(asparta3) == 'asparta3'] <- 'Insulina' 
  asparta3$Accion <- 'ULTRARRAPIDA'
  asparta3$Tipo   <- 'ASPARTA'

  insulina_glulisina<- read_html("https://www.vademecum.es/principios-activos-insulina+glulisina-a10ab06") 

  lista_insulina_glulisina <-
    insulina_glulisina %>%
    html_nodes(css = "div.listamedic") %>%
    html_text()

  glulisina1 <- str_split(lista_insulina_glulisina, '\n')
  glulisina2 <- data.frame(glulisina1)
  glulisina2 <- glulisina2[5:100,]
  glulisina3 <- data.frame(glulisina2)
  glulisina3 <- glulisina3[!is.na(glulisina3$glulisina2),]
  glulisina3 <- data.frame(glulisina3)
  colnames(glulisina3)[colnames(glulisina3) == 'glulisina3'] <- 'Insulina' 
  glulisina3$Accion <- 'ULTRARRAPIDA'
  glulisina3$Tipo   <- 'GLULISINA'

  insulina_regular<- read_html("https://www.vademecum.es/principios-activos-insulina+humana+para+inyeccion-a10ab01") 

  lista_insulina_regular <-
    insulina_regular %>%
    html_nodes(css = "div.listamedic") %>%
    html_text()

  regular1 <- str_split(lista_insulina_regular, '\n')
  regular2 <- data.frame(regular1)
  regular2 <- regular2[5:100,]
  regular3 <- data.frame(regular2)
  regular3 <- regular3[!is.na(regular3$regular2),]
  regular3 <- data.frame(regular3)
  colnames(regular3)[colnames(regular3) == 'regular3'] <- 'Insulina' 
  regular3$Accion <- 'RAPIDA'
  regular3$Tipo   <- 'REGULAR'

  install.packages("gdata", dependencies=TRUE)
  library(gdata)
  insulina_total <- rbind(lispro3, asparta3, glulisina3, regular3)
  insulina_total <- insulina_total[insulina_total$Insulina != '', ]

  library(sqldf)

  db <- dbConnect(SQLite(), dbname="insulina_total")

  dbSendQuery(conn = db,

       "CREATE TABLE insulina_total
       (Insulina TEXT,
        Accion TEXT,
        Tipo TEXT)")

  dbListTables(db)
  dbListFields(db, "insulina_total")    

  res <- dbReadTable(db, "insulina_total")
  dbWriteTable(conn = db, name = "insulina_total", value = insulina_total, append = TRUE)

  dbGetQuery(db, "select * from insulina_total")
  dbRemoveTable(db, "insulina_total")
  dbListTables(db)
  out <- dbWriteTable(db, "insulina_total", insulina_total)
  datatable(insulina_total)

}
