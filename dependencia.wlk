import rodados.*

class Dependencia {
  const rodados = []
  const cantidadDeEmpleados 

  method agregarAFlota(rodado) {
    rodados.add(rodado)
  } 
  method quitarAFlota(rodado) {
    rodados.remove(rodado)
  }
  method pesoTotal() = rodados.sum({r=>r.peso()})
  method estaBienEquipado() = rodados.size() >= 3 and rodados.all({r => r.velocidad() > 100})
  method capacidadTotalEnColor(color) = rodados.filter({r=>r.color()==color}).sum({r=>r.capacidad()}))
  method colorDelRodadoMasRapido() = rodados.max({r=>r.velocidad()}).color()
  method capacidadTotal() = rodados.sum({r=>r.capacidad()}) 
  method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotal()
}