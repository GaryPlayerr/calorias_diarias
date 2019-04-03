
unidades.insulina <- function()
{

          db <- dbConnect(SQLite(), dbname="perfil_insulina")

          unidades <- dbGetQuery(db, "select * from perfil_insulina") 

          library(DT)

          datatable(unidades)

   }
