class Imcexception implements Exception {
  final String mensagem;

  Imcexception(this.mensagem);

  @override
  String toString() => "Erro :$mensagem";
}
