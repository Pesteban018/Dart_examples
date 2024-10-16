// Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
//Agrega un método para mostrar los detalles de la persona.

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  String mostrarDetalles() {
    return 'Nombre: $nombre, Edad: $edad años';
  }
}

void main() {
  Persona persona1 = Persona('Esteban', 19);

  print(persona1.mostrarDetalles());
}
