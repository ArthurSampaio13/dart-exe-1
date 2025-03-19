/* 
Implemente uma classe chamada “Livro” com atributos para armazenar o título, o autor e o número de páginas do livro. 
Adicione métodos para emprestar o livro, devolvê-lo e verificar se está disponível.
*/

class Livro {
  String titulo;
  String autor;
  int numeroPaginas;
  bool disponivel = true;

  Livro(this.titulo, this.autor, this.numeroPaginas);

  void emprestar() {
    if (disponivel) {
      disponivel = false;
      print('Livro emprestado.');
    } else {
      print('Livro já emprestado.');
    }
  }

  void devolver() {
    disponivel = true;
    print('Livro devolvido.');
  }

  bool verificarDisponibilidade() {
    return disponivel;
  }
}

void exibirDisponibilidade(bool disponivel) {
  print('Disponível: $disponivel');
}

void main() {
  var livro = Livro('1984', 'George Orwell', 328);
  livro.emprestar();
  livro.devolver();
  exibirDisponibilidade(livro.verificarDisponibilidade());
}
