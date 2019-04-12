ui <- fluidPage(
  title = 'P&P Insuline',
  
  titlePanel('P&P Insuline: Prediction  and  Precision  "I n s u l i n e"'),
  
    tabsetPanel(id = "tabs",
      
      tabPanel('P&P Insuline', value = 'M',
               h1('Prediction  and  Precision  "I n s u l i n e"'),
               img(src='logo.png', align = "center"),
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
