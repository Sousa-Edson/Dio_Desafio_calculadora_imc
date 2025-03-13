import 'package:calculadora_imc/models/Pessoa.dart';

class IMCService {
  double calcularIMC(Pessoa pessoa) {
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }
}
