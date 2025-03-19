/* 
Crie uma classe chamada “Retângulo” que possua atributos para armazenar a largura e a altura. 
Implemente métodos para calcular a área e o perímetro do retângulo.
*/

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    return largura * altura;
  }

  double calcularPerimetro() {
    return 2 * (largura + altura);
  }
}

void exibirRetangulo(double area, double perimetro) {
  print('Área: $area');
  print('Perímetro: $perimetro');
}

void main() {
  var retangulo = Retangulo(5, 10);
  double area = retangulo.calcularArea();
  double perimetro = retangulo.calcularPerimetro();
  exibirRetangulo(area, perimetro);
}
