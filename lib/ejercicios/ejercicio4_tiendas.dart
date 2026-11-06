// Ejercicio 4: calcular la media de valoraciones de cada tienda
// y guardarla en el propio Map de la tienda

void main() {
  var shops = [
    {
      'name': 'Pizzeria Ma Casa',
      'type': 'Restaurante',
      'ratings': [4.0, 3.0, 4.5],
    },
    {
      'name': 'Todo Bombillas',
      'type': 'Iluminación',
      'ratings': [5.0, 4.5, 3.5],
    },
    {
      'name': 'Sport & Family',
      'type': 'Deporte',
      'ratings': [3.5, 4.0, 4.0],
    },
  ];

  for (var shop in shops) {
    final ratings = shop['ratings'] as List<double>;

    // Sumo todas las valoraciones y divido entre cuántas hay
    double suma = ratings.fold(0.0, (acumulado, r) => acumulado + r);
    double media = suma / ratings.length;

    // Lo redondeo a 1 decimal: toStringAsFixed devuelve String,
    // así que lo vuelvo a pasar a double con double.parse
    double averageRating = double.parse(media.toStringAsFixed(1));

    shop['averageRating'] = averageRating;

    // Al imprimir el Map sale todo el contenido de la tienda
    print(shop);
  }
}
