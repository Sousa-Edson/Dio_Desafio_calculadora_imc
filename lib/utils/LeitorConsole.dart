import 'dart:io';

import 'package:calculadora_imc/exceptions/IMCException.dart';

class LeitorConsole {
  static String lerTexto(String msg) {
    stdout.write(msg);
    return stdin.readLineSync()!;
  }

  static double lerNumero(String msg) {
    stdout.write(msg);
    String? entrada = stdin.readLineSync()!;
    if (entrada == null || entrada.isEmpty) {
      throw Imcexception("Entrada inválida: valor não pode ser vazio");
    }
    double? valor = double.tryParse(entrada);
    if (valor == null) {
      throw Imcexception("Entrada inválida: digite um valor válido");
    }
    return valor;
  }
}
