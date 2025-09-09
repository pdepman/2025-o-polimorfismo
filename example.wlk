/*

object ernesto1 {  // Está mal porque precalcula, se guarda el valor dependiente en lugar de guardarse el independiente
  var energia = 40         // 200 / 5
  
  method energia() = energia

  method hambre(unHambre){
    energia = 200 / unHambre
  }
}

object ernesto3 { // descartado porque el hambre debería ser un atributo
  method energia(hambre) = 200 / hambre
}

*/

object ernesto {
  var hambre = 5
  
  method energia() = 200 / hambre
  
  method hambre(unHambre){ // setter
    hambre = unHambre
  }

  method hambre() = hambre //getter

  method comerAlfajor(){
    hambre = hambre * 0.5
  }

  method merendar() {
    self.comerAlfajor()
    self.comerAlfajor()
  }
}

