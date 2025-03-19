/* 
Classe Conta Corrente: Crie uma classe para implementar uma conta corrente. 
A classe deve possuir os seguintes atributos: número da conta, nome do correntista e saldo. Os métodos são os seguintes: depósito e saque; 
No construtor, saldo é opcional, com valor default zero e os demais atributos são obrigatórios.
*/

class ContaCorrente {
  String numeroConta;
  String nomeCorrentista;
  double saldo;

  ContaCorrente(this.numeroConta, this.nomeCorrentista, [this.saldo = 0]);

  void deposito(double valor) {
    saldo += valor;
  }

  void saque(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente!');
    }
  }
}

void exibirSaldo(double saldo) {
  print('Saldo final: R\$ $saldo');
}

void main() {
  var conta = ContaCorrente('12345', 'João');
  conta.deposito(500);
  conta.saque(200);
  exibirSaldo(conta.saldo);
}
