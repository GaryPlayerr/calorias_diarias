hc.prot.lip <- function(){
  
  n1<-readline(prompt="Calorias diarias: " )
  
  n1<-as.integer(n1)
  
  hc <- n1 * 0.6
  prot <- n1 * 0.15
  lip <- n1 * 0.25
  lip_veg <- lip * 0.7
  lip_an <- lip * 0.3
  lip_sat <- n1 * 0.07
  
  message("Calorias Hidratos de carbono: ", hc)
  message("Calorias Proteina: ", prot)
  message("Calorias Grasa total: ", lip)
  cat("Grasa vegetal: ", lip_veg, " ; Grasa animal: ", lip_an," ; Grasa saturada < ", lip_sat)
  
}
