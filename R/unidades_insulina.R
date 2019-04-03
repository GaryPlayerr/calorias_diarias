
unidades.insulina <- function()
{

          db <- dbConnect(SQLite(), dbname="insulina_total")

          unidades <- dbGetQuery(db, "select * from insulina_total") 

          library(DT)

          datatable(unidades)

   }
