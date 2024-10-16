// Aserciones y Clases Abstractas
//Define una clase abstracta Animal con un método comer(). Crea una subclase Perro que implemente este método.
// Agrega una aserción en el constructor de Perro para asegurarte de que la edad del perro sea mayor que 0.

abstract class Animal {
  void comer();
}

class Perro extends Animal {
  String nombre;
  int edad;

  Perro({required this.nombre, required this.edad})
      : assert(edad > 0, 'La edad debe ser mayor que 0');

  @override
  void comer() {
    print('$nombre está comiendo.');
  }
}

void main() {
  Perro perro1 = Perro(nombre: 'Pinki', edad: 5);
  perro1.comer(); 

}
