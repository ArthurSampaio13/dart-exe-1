// Gerador de Tabuada Simples:
// Faça um programa que gera a tabuada de multiplicação de um número escolhido (não precisa solicitar ao usuário), indo de 1 até 10.

void main() {
    int num = 2;

    for (int i = 0; i <= 10; i++) {
        print("$i * $num = ${i * num}");
    }
}