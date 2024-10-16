// Extensiones y Enumeraciones
// Crea una enumeración DiaSemana con los días de la semana.
// Define una extensión sobre int que devuelva true si el número es par. Úsalo para verificar si un número ingresado por el usuario es par.
// Imprime el dia de la semana que corresponde al número ingresado por el usuario, sacando el valor de la list num ya creada.


enum DiaSemana { Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo }

extension ParExtension on int {
  bool esPar() => this % 2 == 0;
}

void main() {
  List<int> num = [1, 3, 6, 7];

  for (int numero in num) {
    print('Número: $numero');
    print(numero.esPar()
        ? 'El número $numero es par.'
        : 'El número $numero es impar.');

    if (numero >= 1 && numero <= 7) {
      print('Día correspondiente: ${DiaSemana.values[numero - 1]}');
    } else {
      print('El número $numero no corresponde a un día de la semana.');
    }
    print(''); 
  }
}


