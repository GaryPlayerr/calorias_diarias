server <- function(input, output) {

          output$insulina <- DT::renderDataTable({
  
            db <- dbConnect(SQLite(), dbname="insulina_total")
            
            if  (input$insulina == 'Todas')
            {
              insulinas <- dbGetQuery(db, "select * from insulina_total")
            }
            else if  (input$insulina == 'Rapida')
            {
              insulina1 <- paste('rap', '%',sep = '')
              insulinas <- dbGetQuery(db, "select * from insulina_total where Accion like ?", insulina1) 
            }
            else if  (input$insulina == 'Ultrarrapida')
            {
              insulina2 <- paste('ultra', '%',sep = '')
              insulinas <- dbGetQuery(db, "select * from insulina_total where Accion like ?", insulina2) 
            }
              if  (input$tabs2 == 'I')
              {datatable(insulinas, class = 'cell-border stripe', rownames = FALSE, 
                        caption = 'Insulinas.', filter = 'top')}
          })

          output$alimentos <- DT::renderDataTable({
            
              db <- dbConnect(SQLite(), dbname=input$alimentos)
              
              por <- 1

              alimento <- dbGetQuery(db, statement = paste("select * from ", input$alimentos,""))
              alimento$Calorias <- NULL
              alimento$Proteina_calorias <- alimento$Proteina * por * 4
              alimento$Grasas_calorias <- alimento$Grasas * por * 9
              alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
              alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por
              alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
              alimento$Agua <- NULL
              alimento$Cenizas <- NULL
              alimento$Proteina <- NULL
              alimento$Grasas <- NULL
              alimento$Carbohidratos <- NULL
              
              if  (input$tabs2 == 'A')
              {datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                        caption = 'Composicion cereales por 100 gr.', filter = 'top')}
            
          })  
          
          output$recomendaciones <- DT::renderDataTable({

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
            if  (input$tabs2 == 'R')
            {datatable(dataf, class = 'cell-border stripe', rownames = FALSE, 
                      caption = 'Recomendaciones ADA.')}

          })  
          
          
          output$perfilusuario <- DT::renderDataTable({
            
            db <- dbConnect(SQLite(), dbname="perfil_insulina")
            unidades <- dbGetQuery(db, "select * from perfil_insulina") 
            
            if  (input$tabs == 'U')
            {datatable(unidades, class = 'cell-border stripe', rownames = FALSE, 
                        caption = 'Perfil actual del usuario.')}
          })   
          
          
          output$perfilinsulina <- DT::renderDataTable({
            
            db <- dbConnect(SQLite(), dbname="unidades_insulina")
            unidades <- dbGetQuery(db, "select * from unidades_insulina") 

            if  (input$tabs == 'DI')
            {datatable(unidades, class = 'cell-border stripe', rownames = FALSE, 
                        caption = 'Historico de dietas y unidades de insulina.', filter = 'top')}
          })           
       
}
