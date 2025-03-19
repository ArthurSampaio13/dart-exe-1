/* 
Verificar Palíndromo: Escreva uma função que verifique se uma string é um palíndromo.
*/

bool verificarPalindromo(String texto) {
  String textoInvertido = texto.split('').reversed.join('');
  return texto == textoInvertido;
}

void exibirResultadoPalindromo(bool isPalindromo) {
  if (isPalindromo) {
    print('É um palíndromo.');
  } else {
    print('Não é um palíndromo.');
  }
}

void main() {
  bool isPalindromo = verificarPalindromo('onibus');
  exibirResultadoPalindromo(isPalindromo);
}
