calorias.diarias <- function(){
  n1<-readline(prompt="Sexo(M/F): " )

  while (n1 != 'M' & n1 != 'F')
    if  (n1 == 'M')
      {
      TMB = (10 * n4) + (6.25 * n3) - (5 * n2) + 5 
      }
    else if  (n1 == 'F')
      {
      TMB = (10 * n4) + (6.25 * n3) - (5 * n2) - 161   
      }
    else
      {
        message('ERROR, teclea M o F') 
        
        n1<-readline(prompt="Sexo(M/F): " )
      
        if  (n1 == 'M')
          {
            TMB = (10 * n4) + (6.25 * n3) - (5 * n2) + 5 
          }
        else if  (n1 == 'F')
          {
            TMB = (10 * n4) + (6.25 * n3) - (5 * n2) - 161  
      
          }
      }
  
  n2<-readline(prompt="Edad: " )
  n3<-readline(prompt="Altura: " )
  n4<-readline(prompt="Peso: " )
  n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
  
  n2<-as.integer(n2)
  n3<-as.integer(n3)
  n4<-as.integer(n4)
  
  if  (n5 == '5')
    {
      calorias = TMB * 1.9
    }
  else if  (n5 == '4')
      {
        calorias = TMB * 1.725
      }
  else if  (n5 == '3')
      {
        calorias = TMB * 1.55
      }  
  else if  (n5 == '2')
      {
        calorias = TMB * 1.375
      }
  else
      {
        calorias = TMB * 1.2
      }
       
  print(calorias)
  
}
