  // print hello 10 times
void main() {
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }
}

// 
Variables and Data Types
void main() {
  String nombre = 'Esteban';
  int edad = 19;
  int matricula = 20211076;
  bool esEstudiante = true;

  print('Nombre: $nombre');
  print('Edad: $edad');
  print('Matricula: $matricula ');
  print('Es estudiante: $esEstudiante');
}

// Funtion
int cuadrado(int num) {
  return num * num;
}

void main() {
  int resultado = cuadrado(4);
  print('El cuadrado de 4 es: $resultado');
}

// Conditionals
void main() {
  int numero = 7;

  if (numero % 2 == 0) {
    print('$numero es par');
  } else {
    print('$numero es impar');
  }
}

