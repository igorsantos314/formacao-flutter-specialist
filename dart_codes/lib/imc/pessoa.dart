class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa({required this.nome, required this.peso, required this.altura}) {
    if (peso <= 0) throw ArgumentError('Peso deve ser maior que zero.');
    if (altura <= 0) throw ArgumentError('Altura deve ser maior que zero.');
    if (nome.trim().isEmpty) throw ArgumentError('Nome não pode ser vazio.');
  }

  double get imc => peso / (altura * altura);

  String get classificacao {
    final v = imc;
    if (v < 18.5) return 'Abaixo do peso';
    if (v < 25.0) return 'Peso normal';
    if (v < 30.0) return 'Sobrepeso';
    if (v < 35.0) return 'Obesidade grau I';
    if (v < 40.0) return 'Obesidade grau II';
    return 'Obesidade grau III';
  }

  @override
  String toString() =>
      'Pessoa(nome: $nome, peso: ${peso}kg, altura: ${altura}m, '
      'IMC: ${imc.toStringAsFixed(2)}, Classificação: $classificacao)';
}
