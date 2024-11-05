import plagas.*

class Barrios {
  const property barrio = []

  method agregarElementoAlBarrio(unElemento) {barrio.add(unElemento)}
  method sonCopados() = barrio.count({c => c.esBuena()})
  method noSonCopadas() = barrio.count({c => ! c.esBuena()})
  method esBarrioCopado() = self.sonCopados() > self.noSonCopadas()

  method sufrirPlagaEnElBarrion(unaPlaga) {
    barrio.forEach({c => c.sufrirAtaqueDe_(unaPlaga)})    
  }
}

class Hogar{
  var mugre
  const confort

  method esBuena() = self.mugre() < self.confort() / 2
  method mugre() = mugre
  method confort() = confort

  method sufrirAtaqueDe_(unaPlaga) {
    mugre = mugre + unaPlaga.nivelDeDanio()
    unaPlaga.EfectoDeAtaque()
  }
}

class Huerta {
  var capacidadDeProduccion

  method esBuena() = capacidadDeProduccion > valorMinimoDeProduccion.valor()

  method capacidadDeProduccion() = capacidadDeProduccion

  method sufrirAtaqueDe_(unaPlaga) {
    capacidadDeProduccion = 
    if(!unaPlaga.transmitenEnfermedades()){ 0.max( capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1) } else {0.max( capacidadDeProduccion - (unaPlaga.nivelDeDanio() * 0.1 + 10) )}
    unaPlaga.EfectoDeAtaque()
  }
}

object valorMinimoDeProduccion {
  var property valor = 100 
}

class Mascotas {
  var nivelDeSalud

  method esBuena() = nivelDeSalud > 250

  method sufrirAtaqueDe_(unaPlaga) {
    nivelDeSalud = if(unaPlaga.transmitenEnfermedades()){0.max(nivelDeSalud - unaPlaga.nivelDeDanio())}

    unaPlaga.EfectoDeAtaque()
  }
}