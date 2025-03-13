class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa() {}

  // Pessoa(String nome, double peso, double altura) {
  //   this._nome = nome;
  //   this._peso = peso;
  //   this._altura = altura;
  // }

  String get nome => _nome;

  set nome(String nome) => _nome = nome;

  double get peso => _peso;

  set peso(double peso) => _peso = peso;

  double get altura => _altura;

  set altura(double altura) => _altura = altura;
}
