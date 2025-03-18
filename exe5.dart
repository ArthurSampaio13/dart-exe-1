/* Verificador de Número Primo:
Faça um programa que verifica se um número é primo ou não (Não precisa solicitar ao usuário).
*/

bool verificarPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void exibirResultadoPrimo(bool isPrimo) {
  if (isPrimo) {
    print('O número é primo.');
  } else {
    print('O número não é primo.');
  }
}

void main() {
  bool isPrimo = verificarPrimo(8); 
  exibirResultadoPrimo(isPrimo);
}