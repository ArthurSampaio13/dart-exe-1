/* 
Escreva um programa que calcule a soma dos números de 1 a 100.
*/

int somaNumeros() {
  int soma = 0;
  for (int i = 1; i <= 100; i++) {
    soma += i;
  }
  return soma;
}

void exibirSoma(int soma) {
  print('Soma de 1 a 100: $soma');
}

void main() {
  int soma = somaNumeros();
  exibirSoma(soma);
}
