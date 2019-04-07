recomendaciones.ADA <- function(){

  library(DT)
  install.packages("rvest")
  library(rvest)
  library(stringr)

  recomendaciones_ADA<- read_html("http://www.diabetes.org/es/vivir-con-diabetes/tratamiento-y-cuidado/el-control-de-la-glucosa-en-la-sangre/cmo-medir-la-glucosa-en-la.html") 

  rec_ADA <-
    recomendaciones_ADA %>%
    html_nodes(css = "main.colone") %>%
    html_text()


