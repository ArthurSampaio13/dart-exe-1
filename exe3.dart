/* Calculadora de Juros Simples: 
Crie um programa que calcula o montante final após juros simples. 
O programa deve ter o principal (valor inicial), a taxa de juros (em porcentagem) e o tempo (em anos), e em seguida exibir o montante final. 
*/

void main() {
  double principal = 1000.0;
  double taxaJuros = 5.0;
  double tempo = 2.0;
  double montante = calcularJurosSimples(principal, taxaJuros, tempo);
  exibirMontanteFinal(montante);
}

double calcularJurosSimples(double principal, double taxaJuros, double tempo) {
  return principal + (principal * taxaJuros / 100 * tempo);
}

void exibirMontanteFinal(double montante) {
  print('Montante final: R\$ $montante');
}

