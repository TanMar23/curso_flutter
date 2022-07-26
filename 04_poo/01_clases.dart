/*
EJERCICIO;
Crea una clase llamada Cuenta que tendrá los siguientes atributos: titular y cantidad (puede tener decimales).

El titular será obligatorio y la cantidad es opcional. Crea dos constructores(diferentes) que cumpla lo anterior.

Crea sus métodos get, set y toString.

Tendrá dos métodos especiales:

ingresar(double cantidad): se ingresa una cantidad a la cuenta, si la cantidad introducida es negativa, no se hará nada.
retirar(double cantidad): se retira una cantidad a la cuenta, si restando la cantidad actual a la que nos pasan es negativa, la cantidad de la cuenta pasa a ser 0.
*/

import '02_clases_abstractas.dart';

class Movimiento {
  Movimiento({
    required this.emisor,
    this.saldoActual,
    this.saldoAnterior,
  });

  String emisor;
  double? saldoActual;
  double? saldoAnterior;
}

class Cuenta extends Factura {
  Cuenta({
    this.cantidad = 0.0,
  });

  String _titular = 'Desconocido';
  double cantidad;
  List<Movimiento> listaDeMovimientos = [];

  String get titularInfo {
    return 'La cuenta pertenece a: $_titular y tiene un balance de: $cantidad';
  }

  void set titular(String titular) {
    _titular = titular;
  }

  // Métodos
  void ingresar({
    required double cantidadAIngresar,
  }) {
    if (cantidadAIngresar < 0) {
      return;
    }
    this.cantidad = this.cantidad + cantidadAIngresar;
    final movimientoIngresar = Movimiento(
      emisor: _titular,
      saldoActual: this.cantidad,
      saldoAnterior: this.cantidad - cantidadAIngresar,
    );
    listaDeMovimientos.add(movimientoIngresar);
  }

  void retirar({
    required double cantidadARetirar,
  }) {
    this.cantidad = this.cantidad - cantidadARetirar;
    if ((this.cantidad) < 0) {
      this.cantidad = 0;
    }
    final movimientoRetirar = Movimiento(
      emisor: _titular,
      saldoActual: this.cantidad,
      saldoAnterior: this.cantidad + cantidadARetirar,
    );
    this.listaDeMovimientos.add(movimientoRetirar);
  }

  @override
  void imprimirFactura(int movementIndex) {
    if (movementIndex.isNegative ||
        movementIndex >= this.listaDeMovimientos.length) {
      print('No existe una factura con ese index');
      return;
    } else {
      final index = listaDeMovimientos[movementIndex];
      print('FACTURA $movementIndex');
      print('El emisor de la factura $movementIndex es: ${index.emisor}');
      print('El saldo anterior era: ${index.saldoAnterior}');
      print('El saldo actual es: ${index.saldoActual}');
      ((index.saldoActual ?? 0) < (index.saldoAnterior ?? 0))
          ? print(
              'Operación: Retiro de ${(index.saldoAnterior ?? 0) - (index.saldoActual ?? 0)}')
          : print(
              'Operación: Ingreso de ${(index.saldoActual ?? 0) - (index.saldoAnterior ?? 0)}');
    }
  }
}

main() {
  Cuenta cuentaPrueba = new Cuenta();
  cuentaPrueba.ingresar(cantidadAIngresar: 100);
  cuentaPrueba.retirar(cantidadARetirar: 50);
  cuentaPrueba.retirar(cantidadARetirar: 50);
  cuentaPrueba.ingresar(cantidadAIngresar: 20);
  cuentaPrueba.imprimirFactura(0);
  cuentaPrueba.imprimirFactura(1);
  cuentaPrueba.imprimirFactura(2);
  cuentaPrueba.imprimirFactura(3);
  cuentaPrueba.imprimirFactura(-4);
}
