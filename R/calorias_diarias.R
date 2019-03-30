calorias.diarias <- function(){

  n1<-readline(prompt="Sexo(M/F): " )
  
  if (n1 != 'M' & n1 != 'F')
    {
      message('ERROR, teclea M o F')
      n1<-readline(prompt="Sexo(M/F): " )
    
      while (n1 != 'M' & n1 != 'F')
        {
      
         message('ERROR, teclea M o F')
         n1<-readline(prompt="Sexo(M/F): " )
      
        }
    
    }
    
  n2<-readline(prompt="Edad: " )
  n3<-readline(prompt="Altura: " )
  n4<-readline(prompt="Peso: " )
  
  n6<-readline(prompt="¿Caminas o corres? ¿Conoces la distancia y el tiempo de? (S/N)  : " )
  
  if  (n6 == 'N')
    {
      n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
    }  
  
  else if  (n6 == 'S')
    {
      n7<-readline(prompt="Distancia(km) : " ) 
      n8<-readline(prompt="Tiempo(minutos) : " ) 
    
      horas = n8 / 60
      vel = n7 / horas
    
    }  
  
  n2<-as.integer(n2)
  n3<-as.integer(n3)
  n4<-as.integer(n4)
  
  if  (n1 == 'M')
    {
      TMB = (10 * n4) + (6.25 * n3) - (5 * n2) + 5 
    }
  else if  (n1 == 'F')
    {
      TMB = (10 * n4) + (6.25 * n3) - (5 * n2) - 161     
    }
  
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
  else if  (n5 == '1')
      {
        calorias = TMB * 1.2
      }
  
  if  (n6 == 'S') 
      {
  
      cal = 14.26 * n8 + 46.66 * vel + 8.55 * n4 - 1164.85
    
      calorias = TMB + cal 
  
      }
  
  print(calorias)
  
}
