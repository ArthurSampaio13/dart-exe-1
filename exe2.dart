/* Calculadora de Desconto: 
Faça um programa que calcula o preço final de um produto após aplicar um desconto. 
O programa deve ter o preço original do produto e a porcentagem de desconto, e em seguida exibir o preço final.
 */

 void main() {
    double precoOriginal = 10.0;
    double descontoPorcetagem = 0.8;

    print("Valor original R\$$precoOriginal com desconto de ${descontoPorcetagem * 100}% fica o total de R\$${desconto(precoOriginal, descontoPorcetagem)}");

 }

 double desconto(double precoOriginal, double descontoPorcetagem) {
    return precoOriginal - precoOriginal * descontoPorcetagem;
 }