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
  
n1<-readline(prompt="Introduce una opcion: " )  
while (n1 != 0 & n1 != 1 & n1 != 2 & n1 != 3 & n1 != 4 & n1 != 5 & n1 != 6 & n1 != 7)
{
  n1<-readline(prompt="Introduce una opcion valida: " ) 
}  
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
    
      print('1 - Ayuda Calcular calorias diarias y registrar/modificar perfil :')
      print('2 - Ayuda Consultar BBDD de alimentos :')    
      print('3 - Ayuda Consultar BBDD de Insulinas :')    
      print('4 - Ayuda Consultar Unidades de Insulina y dietas de dias anteriores :')
    
      n2<-readline(prompt="Introduce una opcion : " )
      
       if  (n2 == 1)
          {
            ?calorias.diarias
          }  
       else if  (n2 == 2)
          {
            ?alimento.composicion
          }
       else if  (n2 == 3)
          {  
            ?insulina
          }
       else if  (n2 == 4)
          {
            ?unidades.insulina 
          } 
    }
}
