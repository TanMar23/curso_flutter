import 'dart:io';

main() {
  // Imprimir en terminal
  // Hola Mundo!!!
  // Con salto de linea: Hola Mundo!

  stdout.writeln('Hola Mundo!');
  stdout.write('Hola Mundo!!!');

  // Obtener info del user:
  // Preguntar por nombre del user:
  stdout.writeln('Cuál es tu nombre?');

  // Guardar info en mi variable name:
  String? name = stdin.readLineSync();

  // Imprimir info en consola usando interpolación:
  stdout.write('Tu nombre es: $name');
}
