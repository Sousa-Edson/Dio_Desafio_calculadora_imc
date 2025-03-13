import 'package:calculadora_imc/models/Pessoa.dart';
import 'package:calculadora_imc/services/IMCService.dart';
import 'package:calculadora_imc/utils/LeitorConsole.dart';

void main(List<String> arguments) {
  try {
    String nome = LeitorConsole.lerTexto("Digite seu nome: ");
    double peso = LeitorConsole.lerNumero("Digite seu peso (kg): ");
    double altura = LeitorConsole.lerNumero("Digite sua altura (m): ");

    Pessoa pessoa = Pessoa(nome, peso, altura);
    IMCService imcService = IMCService();
    double imc = imcService.calcularIMC(pessoa);

    print("\n=== Resultado ===");
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: ${imc.toStringAsFixed(2)}");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
