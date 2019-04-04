perfil.insulina <- function()

{
          library(sqldf)

          db <- dbConnect(SQLite(), dbname="unidades_insulina")

          unidades <- dbGetQuery(db, "select * from unidades_insulina") 

          library(DT)

          datatable(unidades)

   }
