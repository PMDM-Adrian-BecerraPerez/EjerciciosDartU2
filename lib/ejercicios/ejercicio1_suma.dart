// Ejercicio 1: sumar los valores de una lista y mostrarlos con el formato "a + b + c = total"

void main() {
  List<int> numeros = [10, 3, 25, 17, 12, 45];
  int suma = 0;

  for (int num in numeros) {
    suma += num;
  }

  print('${numeros.join(' + ')} = $suma');
}
