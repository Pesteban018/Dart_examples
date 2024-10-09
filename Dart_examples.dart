  // print hello 10 times
void main() {
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }
}

// print info about me
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

// print the square of a number
int cuadrado(int num) {
  return num * num;
}

void main() {
  int resultado = cuadrado(4);
  print('El cuadrado de 4 es: $resultado');
}