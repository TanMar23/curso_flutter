// Haremos uso del ejercicio anterior.

// 0) Crear la clase abstracta Factura que tendrá el método llamado imprimirFactura() y se heredará a Cuenta. (Cuenta debe implementarlo)
// 1) crear una clase llamada Movimiento, la cual tendrá como propiedades: emisor (siempre será el titular de la cuenta), saldo anterior y saldo actual.
// 2) Agregar como propiedad en la clase Cuenta una lista de movimientos. (Valor inicial será una list vacía)
// 3) en los métodos retirar e ingresar haremos un registro de los movimientos.
// 4) Comprobar ejercicio generando facturas, para esto debes crear un método que las busque por el index del array de movimientos.

abstract class Factura {
  void imprimirFactura(int index);
}
