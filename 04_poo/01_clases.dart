/*
EJERCICIO;
Crea una clase llamada Cuenta que tendrá los siguientes atributos: titular y cantidad (puede tener decimales).

El titular será obligatorio y la cantidad es opcional. Crea dos constructores(diferentes) que cumpla lo anterior.

Crea sus métodos get, set y toString.

Tendrá dos métodos especiales:

ingresar(double cantidad): se ingresa una cantidad a la cuenta, si la cantidad introducida es negativa, no se hará nada.
retirar(double cantidad): se retira una cantidad a la cuenta, si restando la cantidad actual a la que nos pasan es negativa, la cantidad de la cuenta pasa a ser 0.
*/

class Cuenta {
  // Constructor
  Cuenta({
    required this.titular,
    this.cantidad = 0.0,
  });

  // Propiedades
  String titular;
  double? cantidad;

  // getters y setters
  // double? get cantidad(double? cantidad) {
  //   return _cantidad;
  // }
  String get titularInfo {
    return 'La cuenta pertenece a: $titular y tiene un balance de: $cantidad';
  }

  void set newTitular(String titular) {
    this.titular = titular;
  }

  // Métodos
  void ingresar(double cantidad) {
    if (cantidad < 0) {
      return;
    }

    this.cantidad! + cantidad;
  }

  void retirar(double cantidad) {
    this.cantidad! - cantidad;
    if ((this.cantidad! - cantidad) < 0) {
      this.cantidad = 0;
    }
  }
}
