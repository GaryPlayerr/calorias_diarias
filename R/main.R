main <- function()
{

  print('Pulse 0, 1, 2, 3, 4, 5, 6, 7 segun la opcion que desee') 
  print('0 - Crear BBDD de alimentos e insulinas. NECESARIO LA PRIMERA VEZ QUE SE EJECUTA LA APLICACION')
  print('1 - Calcular calorias diarias y registrar/modificar perfil:')
  print('2 - Calcular las unidades de insulina de correcion o comidas. Registrar las dietas en BBDD:')
  print('3 - Consultar perfil de Usuario:')
  print('4 - Consultar Unidades de Insulina y dietas de dias anteriores:')
  print('5 - Consultar BBDD de alimentos:')
  print('6 - Consultar BBDD de Insulinas')  
  print('7 - Ayuda')
  
  n1<-readline(prompt="Introduzca una opcion: " )
  
  if  (n1 == 0)
    {  
      alimentos.composicion.create()
      insulina.create()    
    }
  
  else if  (n1 == 1)
    {
      calorias.diarias() 
    }
  else if (n1 == 2)
    {
      unidades.insulina()
    }
  else if (n1 == 3)
    {
      perfil.usuario()
    }
  else if (n1 == 4)
    {
      perfil.insulina()
    }
  else if (n1 == 5)
    {
      alimento.composicion()
    }
  else if (n1 == 6)
    {
      insulina()
    }
  else if (n1 == 7)
    {
      n2<-readline(prompt="Ayuda Calcular calorias diarias y registrar/modificar perfil(S/N): " )
       if  (n2 == 'S' | n2 == 's')
          {
            print('Ayuda Calorias')
            ?calorias.diarias
          }  
       n3<-readline(prompt="Ayuda Consultar BBDD de alimentos(S/N): " ) 
       if  (n3 == 'S' | n3 == 's')
          {
            print('Ayuda Alimentos')
            ?alimento.composicion
          }
       n4<-readline(prompt="Ayuda Consultar BBDD de Insulinas(S/N): " ) 
       if  (n4 == 'S' | n4 == 's')
          {  
            print('Ayuda Insulinas')
            ?insulina
          }
       n5<-readline(prompt="Ayuda Consultar Unidades de Insulina y dietas de dias anteriore(S/N): " )
       if  (n5 == 'S' | n5 == 's')
          {
            print('Ayuda Unidades Insulina y Dieta')
            ?unidades.insulina 
          } 
    }  
    
}
