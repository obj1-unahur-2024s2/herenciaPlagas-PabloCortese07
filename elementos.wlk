class Barrios {
  const property barrio = []

  method agregarElementoAlBarrio(unElemento) {barrio.add(unElemento)}
  method sonCopados() = barrio.count({c => c.esBuena()})
  method noSonCopadas() = barrio.count({c => ! c.esBuena()})
  method esBarrioCopado() = self.sonCopados() > self.noSonCopadas()
}

class Hogar{
  var nivel_De_Mugre
  var confort

  method esBuena() = nivel_De_Mugre < confort / 2
  method nivel_De_Mugre() = nivel_De_Mugre
  method confort() = confort
}

class Huerta {
  var capacidadDeProduccion

  method esBuena() = capacidadDeProduccion > valorMinimoDeProduccion.valor()
  method capacidadDeProduccion() = capacidadDeProduccion
}

object valorMinimoDeProduccion {
  var property valor = 100 
}

class Mascotas {
  var nivelDeSalud

  method esBuena() = nivelDeSalud > 250
}