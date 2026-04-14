import 'package:dart_codes/imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa - construtor', () {
    test('cria pessoa válida', () {
      final p = Pessoa(nome: 'João', peso: 70, altura: 1.75);
      expect(p.nome, 'João');
      expect(p.peso, 70);
      expect(p.altura, 1.75);
    });

    test('lança ArgumentError para peso zero', () {
      expect(
        () => Pessoa(nome: 'João', peso: 0, altura: 1.75),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('lança ArgumentError para peso negativo', () {
      expect(
        () => Pessoa(nome: 'João', peso: -5, altura: 1.75),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('lança ArgumentError para altura zero', () {
      expect(
        () => Pessoa(nome: 'João', peso: 70, altura: 0),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('lança ArgumentError para nome vazio', () {
      expect(
        () => Pessoa(nome: '   ', peso: 70, altura: 1.75),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('Pessoa - IMC', () {
    test('calcula IMC corretamente', () {
      final p = Pessoa(nome: 'Ana', peso: 60, altura: 1.60);
      expect(p.imc, closeTo(23.44, 0.01));
    });

    test('classifica Abaixo do peso (IMC < 18.5)', () {
      final p = Pessoa(nome: 'Test', peso: 45, altura: 1.70);
      expect(p.classificacao, 'Abaixo do peso');
    });

    test('classifica Peso normal (18.5 <= IMC < 25)', () {
      final p = Pessoa(nome: 'Test', peso: 70, altura: 1.75);
      expect(p.classificacao, 'Peso normal');
    });

    test('classifica Sobrepeso (25 <= IMC < 30)', () {
      final p = Pessoa(nome: 'Test', peso: 85, altura: 1.75);
      expect(p.classificacao, 'Sobrepeso');
    });

    test('classifica Obesidade grau I (30 <= IMC < 35)', () {
      final p = Pessoa(nome: 'Test', peso: 95, altura: 1.75);
      expect(p.classificacao, 'Obesidade grau I');
    });

    test('classifica Obesidade grau II (35 <= IMC < 40)', () {
      final p = Pessoa(nome: 'Test', peso: 110, altura: 1.75);
      expect(p.classificacao, 'Obesidade grau II');
    });

    test('classifica Obesidade grau III (IMC >= 40)', () {
      final p = Pessoa(nome: 'Test', peso: 130, altura: 1.75);
      expect(p.classificacao, 'Obesidade grau III');
    });
  });

  group('Pessoa - toString', () {
    test('retorna string com dados da pessoa', () {
      final p = Pessoa(nome: 'Maria', peso: 60, altura: 1.60);
      final str = p.toString();
      expect(str, contains('Maria'));
      expect(str, contains('60'));
      expect(str, contains('1.6'));
      expect(str, contains(p.classificacao));
    });
  });
}
