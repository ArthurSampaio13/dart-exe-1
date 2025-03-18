/* Elabore um programa que baseado no número de horas trabalhadas de um operário, calcula o seu salário. 
Sabe-se que o operário ganha R$10,00 por hora. 
Quando o número de horas exceder a 50, ele recebe hora extra. 
Cada hora extra vale R$20,00. No final do processamento imprimir o salário total e o salário excedente (Não precisa solicitar nada ao usuário). 
*/

void calcularSalario(double horasTrabalhadas) {
  double salarioBase = 10.0;
  double salarioExcedente = 0.0;

  if (horasTrabalhadas > 50) {
    salarioExcedente = (horasTrabalhadas - 50) * 20.0;
    horasTrabalhadas = 50;
  }

  double salarioTotal = horasTrabalhadas * salarioBase + salarioExcedente;
  exibirSalario(salarioTotal, salarioExcedente);
}

void exibirSalario(double salarioTotal, double salarioExcedente) {
  print('Salário Total: R\$ $salarioTotal');
  print('Salário Excedente: R\$ $salarioExcedente');
}

void main() {
  calcularSalario(55); 
}