import 'dart:io';

main() {
  /* EJERCICIO
    Crear un programa en dart que:
      Si eres mayor o igual a 21 años, mostrar la palabra "Ciudadano"
      Si estás entre 18 y 20 (incluyendo 18), mostrar "Mayor de edad"
      Si eres menor a 18 (sin contar 18), mostrar "Menor de edad"
      
      28 ciudadano
      21 ciudadano
      20 mayor de edad
      18 mayor de edad
      17 menor de edad
  */

  // Preguntar por edad del user:
  stdout.writeln('¿Cual es tu edad?');

  late int userAge;

  // Asignar edad a lo escrito por el usuario:
  userAge = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (userAge < 18) {
    stdout.writeln('Menor de edad');
  } else if (userAge >= 18 && userAge <= 20) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Ciudadano');
  }
}
