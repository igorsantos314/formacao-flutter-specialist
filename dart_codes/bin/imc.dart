import 'dart:io';
import 'package:dart_codes/imc/pessoa.dart';

void main() {
  try {
    stdout.write('Nome: ');
    final nome = stdin.readLineSync() ?? '';

    stdout.write('Peso (kg): ');
    final pesoStr = stdin.readLineSync() ?? '';
    final peso = double.tryParse(pesoStr.replaceAll(',', '.'));
    if (peso == null) throw FormatException('Peso inválido: "$pesoStr".');

    stdout.write('Altura (m): ');
    final alturaStr = stdin.readLineSync() ?? '';
    final altura = double.tryParse(alturaStr.replaceAll(',', '.'));
    if (altura == null) throw FormatException('Altura inválida: "$alturaStr".');

    final pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

    print('\n--- Resultado ---');
    print('Nome         : ${pessoa.nome}');
    print('IMC          : ${pessoa.imc.toStringAsFixed(2)}');
    print('Classificação: ${pessoa.classificacao}');
  } on FormatException catch (e) {
    stderr.writeln('Erro de formato: ${e.message}');
    exitCode = 1;
  } on ArgumentError catch (e) {
    stderr.writeln('Erro: ${e.message}');
    exitCode = 1;
  } catch (e) {
    stderr.writeln('Erro inesperado: $e');
    exitCode = 1;
  }
}
