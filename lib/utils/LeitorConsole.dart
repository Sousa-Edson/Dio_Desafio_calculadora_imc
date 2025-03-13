import 'dart:io';

import 'package:calculadora_imc/exceptions/IMCException.dart';

class LeitorConsole {
  static String lerTexto(String mensagem) {
    stdout.write(mensagem);
    return stdin.readLineSync()!;
  }

  static double lerNumero(String mensagem) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();
    if (entrada == null || entrada.isEmpty) {
      throw IMCException("Entrada inválida: valor não pode ser vazio.");
    }
    double? valor = double.tryParse(entrada);
    if (valor == null) {
      throw IMCException("Entrada inválida: digite um número válido.");
    }
    return valor;
  }
}
