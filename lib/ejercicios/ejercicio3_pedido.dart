// Ejercicio 3: calcular el total de un pedido a partir del menú (Map)

const precioLlevar = {
  'Bajoques Farcides': 5.5,
  'Olleta Alcoiana': 6.75,
  'Paella Valenciana': 4.75,
};

void calcularPedido(List<String> pedido) {
  double total = 0;

  print('Pedido: $pedido');

  for (String plato in pedido) {
    final precio = precioLlevar[plato];

    if (precio == null) {
      print('Atención: $plato no está en el menú');
    } else {
      total += precio;
    }
  }

  print('TOTAL: ${total.toStringAsFixed(2)} Euros');
}

void main() {
  calcularPedido(['Bajoques Farcides', 'Olleta Alcoiana']);

  print('');

  calcularPedido([
    'Bajoques Farcides',
    'Olleta Alcoiana',
    'Arròs del Senyoret',
  ]);
}
