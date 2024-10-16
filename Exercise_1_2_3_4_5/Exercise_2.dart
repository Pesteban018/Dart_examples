
//Constructores nombrados y @override
//Crea una clase Empleado que herede de Persona. Agrega un constructor
//nombrado que incluya nombre, edad y un nuevo atributo, cargo. Sobrescribe el
//método de mostrar detalles para incluir el cargo del empleado.


class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  String mostrarDetalles() {
    return 'Nombre: $nombre, Edad: $edad años';
  }
}

class Empleado extends Persona {
  String cargo;

  Empleado({required String nombre, required int edad, required this.cargo}) 
      : super(nombre, edad); 

  @override
  String mostrarDetalles() {
    return 'Nombre: $nombre, Edad: $edad años, Cargo: $cargo';
  }
}

void main() {
  Empleado empleado1 = Empleado(nombre: 'Esteban', edad: 18, cargo: 'DEV');

  print(empleado1.mostrarDetalles());
}
