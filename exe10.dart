// Fatorial: Implemente uma função que calcule o fatorial de um número dado.

int fatorial(int numero) {
  if (numero == 0) return 1;
  return numero * fatorial(numero - 1);
}

void exibirFatorial(int fatorial) {
  print('Fatorial: $fatorial');
}

void main() {
  int resultado = fatorial(5);
  exibirFatorial(resultado);
}