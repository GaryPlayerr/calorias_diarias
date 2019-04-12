library(shiny)
library(sqldf)
library(DT)
library("readxl")
library(rvest)
library(stringr)

ui <- fluidPage(
  title = 'P&P Insuline',
  
  titlePanel('P&P Insuline: Prediction  and  Precision  "I n s u l i n e"'),
  
    tabsetPanel(id = "tabs",
      
      tabPanel('P&P Insuline', value = 'M',
               h1('Prediction  and  Precision  "I n s u l i n e"'),
               tags$iframe(src = "logo.png", seamless=NA),
               h2(p(strong('Trabajando en ello...')))),

      tabPanel('Perfil de usuario', value = 'U',
               mainPanel(
                 DT::dataTableOutput('perfilusuario'))),
      
      tabPanel('Perfil de dietas/insulina', value = 'DI',
               mainPanel(
                 DT::dataTableOutput('perfilinsulina'))),
      
      tabPanel("Bases de datos", 
            
      navlistPanel(id = "tabs2",

        tabPanel('Consultar BBDD de Alimentos', value = 'A',  
                 

                tags$head(tags$script("
                    $(document).on('shiny:inputchanged', function(event) {
                                               if (event.name === 'go') {
                                               var text = prompt('Cuantos gramos de alimento vas a consumir?:');
                                               Shiny.onInputChange('mytext', text);
                                               }
                                               });"
                )),
                actionButton("go", "Pulsa AQUI para introducir los gramos de alimento que vas a consumir.", width = '100%'),
                textOutput("txt"),
        
                                  
                 
               sidebarPanel(width = '100%',
                 selectInput(inputId = 'alimentos', 
                             label = 'Elige el tipo de alimento:',
                             choice = c('Cereales','Leguminosas','Tuberculos_hortalizas','Frutos_frescos',
                                        'Frutos_secos','Lacteos','Huevos','Dulces','aceites_grasas',
                                        'Pescados','Cerdo','Cordero','Ternera','Vaca','Embutidos',
                                        'Aves','Caza'),
                             selected = 'Cereales')),
                mainPanel(
                DT::dataTableOutput('alimentos'))),
        
        tabPanel('Consultar BBDD de Insulina', value = 'I',
                 sidebarPanel(width = '100%',
                              selectInput(inputId = 'insulina', 
                                          label = 'Elige el tipo de insulina:', 
                                          choice = c('Todas','Rapida', 'Ultrarrapida'),
                                          selected = 'Todas')),
                 mainPanel(
                   DT::dataTableOutput('insulina'))),
        
        tabPanel('Consultar BBDD de recomendaciones ADA', value = 'R',

                 mainPanel(
                   DT::dataTableOutput('recomendaciones')))
          
    ))))

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

shinyApp(ui = ui, server = server)
