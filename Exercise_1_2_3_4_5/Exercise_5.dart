// Mixins y Factory constructor
// Crea un mixin Nadador con un método nadar(). Agrégalo a una clase Delfín que herede de la clase abstracta Animal.
// Define un Factory constructor en una clase Vehículo que devuelva una instancia de diferentes tipos de vehículos dependiendo del tipo ingresado (e.g.,"auto", "moto").

// Clase abstracta Animal
abstract class Animal {
  void mover(); // Método abstracto que las subclases deben implementar
}

// Mixin Nadador con un método nadar()
mixin Nadador {
  void nadar() {
    print('Estoy nadando!');
  }
}

// Clase Delfín que hereda de Animal y usa el mixin Nadador
class Delfin extends Animal with Nadador {
  @override
  void mover() {
    print('El delfín se mueve nadando.');
  }
}

// Clase base Vehículo
abstract class Vehiculo {
  void tipo(); // Método que implementarán las subclases
}

// Subclase Auto que extiende Vehículo
class Auto extends Vehiculo {
  @override
  void tipo() {
    print('Este es un auto.');
  }
}

// Subclase Moto que extiende Vehículo
class Moto extends Vehiculo {
  @override
  void tipo() {
    print('Esta es una moto.');
  }
}

// Clase FabricaVehiculo con un factory constructor
class FabricaVehiculo {
  // Factory constructor que devuelve una instancia de tipo Vehiculo
  static Vehiculo crear(String tipoVehiculo) {
    if (tipoVehiculo == 'auto') {
      return Auto(); // Retorna una instancia de Auto
    } else if (tipoVehiculo == 'moto') {
      return Moto(); // Retorna una instancia de Moto
    } else {
      throw ArgumentError('Tipo de vehículo no válido: $tipoVehiculo');
    }
  }
}

void main() {
  // Crear una instancia de Delfín y usar sus métodos
  Delfin delfin = Delfin();
  delfin.mover();
  delfin.nadar();

  print(''); // Separador

  // Crear vehículos usando el factory constructor
  Vehiculo auto = FabricaVehiculo.crear('auto');
  auto.tipo();

  Vehiculo moto = FabricaVehiculo.crear('moto');
  moto.tipo();

  // Intentar crear un vehículo no válido (descomentar para probar la excepción)
  // Vehiculo desconocido = FabricaVehiculo.crear('bici');
}


