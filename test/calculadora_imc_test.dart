import 'package:calculadora_imc/models/Pessoa.dart';
import 'package:calculadora_imc/services/IMCService.dart';
import 'package:test/test.dart';

void main() {
  group('IMCService Test', () {
    test('Deve calcular o IMC corretamente', () {
      // Criando uma pessoa com peso e altura conhecidos
      Pessoa pessoa = Pessoa("Teste", 70, 1.75);
      IMCService imcService = IMCService();

      // Calculando o IMC
      double imc = imcService.calcularIMC(pessoa);

      // O IMC esperado para 70kg e 1.75m é aproximadamente 22.86
      expect(imc, closeTo(22.86, 0.01)); // Permite margem de erro de 0.01
    });

    test('Deve lançar um erro se altura for zero', () {
      Pessoa pessoa = Pessoa("Erro", 70, 0);
      IMCService imcService = IMCService();

      // Verifica se ao calcular com altura zero ocorre um erro (evitar divisão por zero)
      expect(() => imcService.calcularIMC(pessoa), throwsA(isA<Exception>()));
    });
  });
}
