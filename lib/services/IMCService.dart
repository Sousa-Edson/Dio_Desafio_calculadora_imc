import 'package:calculadora_imc/models/Pessoa.dart';

class IMCService {
  double calcularIMC(Pessoa pessoa) {
    if (pessoa.altura <= 0) {
      throw Exception("A altura deve ser maior que zero.");
    }
    if (pessoa.peso <= 0) {
      throw Exception("O peso deve ser maior que zero.");
    }

    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }
}
