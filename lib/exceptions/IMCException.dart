class IMCException implements Exception {
  final String mensagem;
  IMCException(this.mensagem);

  @override
  String toString() => "Erro: $mensagem";
}
