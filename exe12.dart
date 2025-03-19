/* 
Contagem de Vogais: Crie uma função que conte o número de vogais em uma string.
*/

int contarVogais(String texto) {
  int contador = 0;
  for (int i = 0; i < texto.length; i++) {
    if ('aeiou'.contains(texto[i].toLowerCase())) {
      contador++;
    }
  }
  return contador;
}

void exibirVogais(int quantidadeVogais) {
  print('Quantidade de vogais: $quantidadeVogais');
}

void main() {
  int quantidadeVogais = contarVogais('exemplo');
  exibirVogais(quantidadeVogais);
}
