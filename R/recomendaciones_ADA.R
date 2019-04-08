recomendaciones.ADA <- function(){

library(DT)
install.packages("rvest")
library(rvest)
library(stringr)

path <- 'http://www.diabetes.org/es/vivir-con-diabetes/tratamiento-y-cuidado/el-control-de-la-glucosa-en-la-sangre/cmo-medir-la-glucosa-en-la.html'
recomendaciones_ADA<- read_html(path) 

rec_ADA <-
  recomendaciones_ADA %>%
  html_nodes(css = "section.content-view-full") %>%
  html_text()

ADA <- str_split(rec_ADA, '\n')
ADA <- data.frame(ADA)
ADA <- ADA[8:16,]
dataf <- data.frame(Recomendaciones_Asociacion_Americana_Diabeticos =  ADA)
datatable(dataf,class = 'cell-border stripe', rownames = FALSE, 
          caption = 'Insulina ultrarrapida.', filter = 'top')
}  
