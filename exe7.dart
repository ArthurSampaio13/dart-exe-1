/* Escreva um programa que fica gerando valores randômicos entre 10 e 40, e finaliza quando o valor gerado for igual a 25. 
Ao final, o programa deve informar quantos números foram gerados, e o valor da soma desses números gerados.
*/

import 'dart:math';

void gerarNumeros() {
  Random rand = Random();
  int numero;
  int soma = 0;
  int contagem = 0;

  do {
    numero = rand.nextInt(31) + 10; 
    soma += numero;
    contagem++;
  } while (numero != 25);

  exibirResultadoGeracao(contagem, soma);
}

void exibirResultadoGeracao(int contagem, int soma) {
  print('Números gerados: $contagem');
  print('Soma dos números: $soma');
}

void main() {
  gerarNumeros();
}