/* 
Crie uma classe chamada Ingresso que possui um valor em reais e quantidade de vendas e um método imprimeValor().
    crie uma classe VIP, que herda Ingresso e possui um valor adicional. Crie um método que retorne o valor do ingresso VIP (com o adicional incluído).
    crie uma classe Normal, que herda Ingresso e possui um método que imprime: "Ingresso Normal".
    crie uma classe CamaroteInferior (que possui a localização do ingresso e métodos para acessar e imprimir esta localização) 
        e uma classe CamaroteSuperior, que é mais cara (possui valor adicional). 
        Esta última possui um método para retornar o valor do ingresso. Ambas as classes herdam a classe VIP
*/

class Ingresso {
  double valor;
  int quantidadeVendas;

  Ingresso(this.valor, this.quantidadeVendas);

  void imprimeValor() {
    print('Valor do ingresso: R\$ $valor');
  }
}

class VIP extends Ingresso {
  double valorAdicional;

  VIP(double valor, int quantidadeVendas, this.valorAdicional) : super(valor, quantidadeVendas);

  double valorVIP() {
    return valor + valorAdicional;
  }
}

class Normal extends Ingresso {
  Normal(double valor, int quantidadeVendas) : super(valor, quantidadeVendas);

  void imprimeTipo() {
    print('Ingresso Normal');
  }
}

class CamaroteInferior extends VIP {
  String localizacao;

  CamaroteInferior(double valor, int quantidadeVendas, double valorAdicional, this.localizacao)
      : super(valor, quantidadeVendas, valorAdicional);

  void imprimeLocalizacao() {
    print('Localização: $localizacao');
  }
}

class CamaroteSuperior extends VIP {
  CamaroteSuperior(double valor, int quantidadeVendas, double valorAdicional)
      : super(valor, quantidadeVendas, valorAdicional);

  @override
  double valorVIP() {
    return super.valorVIP() + 30.0; 
  }
}

void exibirIngresso(Ingresso ingresso) {
  ingresso.imprimeValor();
}

void main() {
  var ingressoNormal = Normal(50.0, 100);
  ingressoNormal.imprimeTipo();
  exibirIngresso(ingressoNormal);

  var ingressoVIP = VIP(100.0, 50, 50.0);
  exibirIngresso(ingressoVIP);
  print('Valor VIP: R\$ ${ingressoVIP.valorVIP()}');
}
