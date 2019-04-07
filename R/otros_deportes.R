
otros.deportes <- function(){
        library("readxl")
    
        n8<-readline(prompt="Tiempo(minutos) : " )
        n4<-readline(prompt="Peso(Kg) : " )
        n8<-as.integer(n8)
        n4<-as.integer(n4)
        url1<-'https://github.com/BorjaJorge/calorias_diarias/raw/master/R/MET.xlsx'
        p1f <- tempfile()
        download.file(url1, p1f, mode="wb")
        tabla<-read_excel(path = p1f)
        tabla$Calorias_que_quemarias <- tabla$Calorias * 0.0175 * n4 * n8
        tabla$Calorias <- NULL
        library(DT)
        datatable(tabla, class = 'cell-border stripe', rownames = FALSE, 
                  caption = 'Calorias de diferentes actividades fisicas en funcion del peso y tiempo.', filter = 'top')  )
}
