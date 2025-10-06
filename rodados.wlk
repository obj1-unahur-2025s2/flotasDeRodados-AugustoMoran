class Corsa {
  const color
  
  method capacidad() = 4
  
  method velocidadMaxima() = 150
  
  method peso() = 1300
  
  method color() = color
}

class Kwid {
  const tieneTanqueAdicional
  
  method funcionaAGas() = true
  
  method capacidad() = if (tieneTanqueAdicional) {
    return 4
  } else {
    return 3
  }
  
  method velocidadMaxima() = if (tieneTanqueAdicional) {
    return 120
  } else {
    return 110
  }
  
  method peso() {
    if (tieneTanqueAdicional) {
      return 1200
    } else {
      return 1350
    }
  }
  
  method color() = azul
}

object trafic {
  var interior = comodo
  var motor = pulenta
  
  method capacidad() = interior.capacidad()
  
  method peso() = (4000 + interior.peso()) + motor.peso()
  
  method velocidadMaxima() = motor.velocidadMaxima()
  
  method asignarMotor(motorAAsignar) {
    motor = motorAAsignar
  }
  
  method asignarInterior(interioAAsignar) {
    interior = interioAAsignar
  }
  
  method color() = blanco
}

object comodo {
  method peso() = 700
  
  method capacidad() = 5
}

object popular {
  method peso() = 1000
  
  method capacidad() = 12
}

object pulenta {
  method peso() = 800
  
  method velocidadMaxima() = 130
}

object bataton {
  method peso() = 500
  
  method velocidadMaxima() = 80
}

object azul {
  
}

object blanco {
  
}
object rojo {
  
}
class AutoEspecial {
  const property capacidad
  const property velocidadMaxima
  const peso
  const color
  method peso() = peso
  method color() = color
}