/* 
Escreva uma classe que represente um país. Um país é representado através dos atributos: 
código ISO 3166-1 (ex.: BRA), nome (ex.: Brasil), população (ex.: 193.946.886) e a sua dimensão em Km2 (ex.: 8.515.767,049). 
a) O objeto pode inicializar com o código ISO e o nome, enquanto a dimensão do país é opcional;
b) Quando a dimensão do país não for informada, colocar em -1 para representar o não informado;
c) Um método que permita verificar se dois objetos representam o mesmo país (igualdade semântica). Dois países são iguais se tiverem o mesmo código ISO;
e) Um método que retorne a densidade populacional do país; 
*/

class Pais {
  String codigoISO;
  String nome;
  double? dimensaoKm2;
  int populacao;

  Pais(this.codigoISO, this.nome, this.populacao, [this.dimensaoKm2 = -1]);

  bool isIgual(Pais outroPais) {
    return codigoISO == outroPais.codigoISO;
  }

  double calcularDensidadePopulacional() {
    if (dimensaoKm2 == -1) return -1;
    return populacao / dimensaoKm2!;
  }
}

void exibirDensidadePopulacional(double densidade) {
  if (densidade == -1) {
    print('Dimensão do país não informada.');
  } else {
    print('Densidade Populacional: $densidade');
  }
}

void main() {
  var pais1 = Pais('BRA', 'Brasil', 193946886, 8515767.049);
  double densidade = pais1.calcularDensidadePopulacional();
  exibirDensidadePopulacional(densidade);
}
