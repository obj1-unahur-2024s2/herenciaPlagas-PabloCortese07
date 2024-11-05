class Plagas{
  var poblacion
  
  method transmitenEnfermedades() = poblacion >= 10
  method poblacion() = poblacion
  method EfectoDeAtaque() {
    poblacion = poblacion + poblacion * 0.1
  }
}

class Cucaracha inherits Plagas {
  var peso
  
  method nivelDeDanio() = self.poblacion() / 2
  override method transmitenEnfermedades() = super() && peso >= 10
  override method EfectoDeAtaque() {
    super()
    peso += 2 
  }
}

class Pulgas inherits Plagas {
  method nivelDeDanio() = self.poblacion() * 2
}

class Garrapata inherits Plagas{
  method nivelDeDanio() = self.poblacion() * 2
  override method EfectoDeAtaque() {
    poblacion = poblacion + poblacion * 0.2
  }
}

class Mosquito inherits Plagas {
  method nivelDeDanio() = self.poblacion()
  override method transmitenEnfermedades() = self.poblacion() % 3 == 0 

}