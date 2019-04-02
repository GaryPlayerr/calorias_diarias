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
  
  n6<-readline(prompt="Conoces la distancia y el tiempo de entrenamiento? (S/N)  : " )
  
  if  (n6 == 'N' != n6 == ' ')
    {
      n5<-readline(prompt="Ejercicio(1-Poco, 2-Ligero, 3-Moderado, 4-Fuerte, 5-Muy fuerte) : " )
    }  
  
  else if  (n6 == 'S')
    {
      n7<-readline(prompt="Distancia(km) : " ) 
      n8<-readline(prompt="Tiempo(minutos) : " ) 
      n5<- 0
      n7<-as.integer(n7)
      n8<-as.integer(n8)
    
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
  else if  (n5 == '1' != n5 == ' ')
      {
        calorias = TMB * 1.2
      }
  
  if  (n6 == 'S') 
      {
      n9<-readline(prompt="Caminas o corres?(S/N) : " ) 
      if  (n9 == 'S')
           {
            cal = 14.26 * n8 + 46.66 * vel + 8.55 * n4 - 1164.85
           }
      else if (n9 == 'N')
           {
            n10<-readline(prompt="Montas en bici?(S/N) : " ) 
        
              if  (n10 == 'S')
                  {
                    if  (vel < 16){cal = 4 * 0.0175 * n4}
                    else if (vel >= 16 & vel < 19){cal = 6 * 0.0175 * n4}
                    else if (vel >= 19 & vel < 22.5){cal = 8 * 0.0175 * n4}
                    else if (vel >= 22.5 & vel < 24){cal = 10 * 0.0175 * n4}
                    else if (vel >= 24 & vel < 35){cal = 12 * 0.0175 * n4}
                    else if (vel > 39 ){cal = 15 * 0.0175 * n4}
                    else {cal = 8 * 0.0175 * n4}
                  }
              else if (n10 == 'N')
                  {                
                    n11<-readline(prompt="Nadas?(S/N) : " ) 
                
                      if  (n11 == 'S'){cal = 10 * 0.0175 * n4}  
                      else{cal = 5.5 * 0.0175 * n4}
                
                  }
              else{cal = 8 * 0.0175 * n4}
           }
      else {cal = 7 * 0.0175 * n4}
      calorias = TMB + cal 
  
      }
  
  print(calorias)
  
  modif<-readline(prompt="Quieres modificar tus calorias(S/N)?: " )
  
  if  (modif == 'S')
      {
    
        calorias<-readline(prompt="Introduce nuevo valor de calorias: " )
        calorias<-as.integer(calorias)
    
      }
  
  hc <- calorias * 0.6
  prot <- calorias * 0.15
  lip <- calorias * 0.25
  lip_veg <- lip * 0.7
  lip_an <- lip * 0.3
  lip_sat <- calorias * 0.07

  message("Calorias Hidratos de carbono: ", hc)
  message("Calorias Proteina: ", prot)
  message("Calorias Grasa total: ", lip)
  cat("Grasa vegetal: ", lip_veg, " ; Grasa animal: ", lip_an," ; Grasa saturada < ", lip_sat)
  
}
