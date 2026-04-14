import 'dart:convert';
import 'package:http/http.dart' as http;

class ViaCepResponse {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;

  ViaCepResponse({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });

  factory ViaCepResponse.fromJson(Map<String, dynamic> json) {
    return ViaCepResponse(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
    );
  }
}

Future<ViaCepResponse> getAddressFromCep(String cep) async {
  final url = 'https://viacep.com.br/ws/$cep/json/';
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return ViaCepResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load address');
    }
  }
   on http.ClientException catch (e) {
    throw Exception('Failed to load address: $e');
  } on FormatException catch (e) {
    throw Exception('Failed to parse address: $e');
  } on Exception catch (e) {
    throw Exception('Failed to load address: $e');
  }
}
