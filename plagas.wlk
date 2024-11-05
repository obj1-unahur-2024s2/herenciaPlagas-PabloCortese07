class Plagas{
    var poblacion
    
    method transmitenEnfermedades() = poblacion >= 10
    method poblacion() = poblacion
}

class Cucaracha inherits Plagas {
  var peso = 0.26
  
  method nivelDeDanio() = self.poblacion() / 2
  override method transmitenEnfermedades() = super() && peso >= 10

}

class Pulgas inherits Plagas {
  method nivelDeDanio() = self.poblacion() * 2

}

class Garrapata inherits Plagas{
  method nivelDeDanio() = self.poblacion() * 2

}

class Mosquito inherits Plagas {
  method nivelDeDanio() = self.poblacion()
  override method transmitenEnfermedades() = self.poblacion() % 3 == 0  
}