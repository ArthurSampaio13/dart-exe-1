/* 
Soma de Números: Escreva uma função que receba uma lista de números e retorne a soma de todos os elementos.
*/

int somaLista(List<int> numeros) {
  return numeros.reduce((a, b) => a + b);
}

void exibirSomaLista(int soma) {
  print('Soma: $soma');
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  int soma = somaLista(numeros);
  exibirSomaLista(soma);
}