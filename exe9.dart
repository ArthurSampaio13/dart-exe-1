/* 
Maior Número: Crie uma função que determine o maior número em uma lista de inteiros. 
*/

int maiorNumero(List<int> numeros) {
  return numeros.reduce((a, b) => a > b ? a : b);
}

void exibirMaiorNumero(int maiorNumero) {
  print('Maior número: $maiorNumero');
}

void main() {
  List<int> numeros = [10, 20, 5, 30, 15];
  int maior = maiorNumero(numeros);
  exibirMaiorNumero(maior);
}