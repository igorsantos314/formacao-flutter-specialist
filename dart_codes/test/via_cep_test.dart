import 'package:dart_codes/cep/via_cep.dart';
import 'package:test/test.dart';

void main() {
  group('Via cep request', () {
    test("Should return success for a valid cep", () async {
      // 
      final response = await getAddressFromCep("01001000");
      expect(response.cep, "01001-000");
      expect(response.logradouro, "Praça da Sé");
      expect(response.complemento, "lado ímpar");
      expect(response.bairro, "Sé");
      expect(response.localidade, "São Paulo");
      expect(response.uf, "SP");
    });
  });
}
