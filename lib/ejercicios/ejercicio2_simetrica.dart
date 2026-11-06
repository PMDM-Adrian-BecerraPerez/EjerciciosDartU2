// Ejercicio 2: diferencia simétrica de dos conjuntos
// Fórmula: (A unión B) menos (A intersección B)

void main() {
  Set<int> a = {3, 7, 1, 10};
  Set<int> b = {2, 1, 7, 5};

  Set<int> union = a.union(b);
  Set<int> comun = a.intersection(b);
  Set<int> simetrica = union.difference(comun);

  print('Diferencia simtrica de $a y $b es: $simetrica');

  int suma = 0;
  for (int num in simetrica) {
    suma += num;
  }

  print('${simetrica.join(' + ')} = $suma');
}
