import 'dart:io';

main() {
  /* EJERCICIO
       Dato de entrada: La base de la tabla de multiplicar
       (este dato debe de ser capturado por el usuario)
       ej: 2      2, 4, 6, 8, 10
       La salida esperada sería
       2 * 1 = 2
       2 * 2 = 4
       2 * 3 = 6
       ..
       2 * 10 = 20
  */

  stdout.writeln('Escribe un número');

  int? inputNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 1;

  for (int i = 1; i <= 10; i++) {
    print('$inputNumber * $i = ' + (inputNumber * i).toString());
  }
}
