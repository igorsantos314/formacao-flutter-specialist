class ViaCepNotFoundException implements Exception {
  final String message;

  ViaCepNotFoundException(this.message);

  @override
  String toString() => 'ViaCepNotFoundException: $message';
}

class ViaCepInvalidCepException implements Exception {
  final String message;

  ViaCepInvalidCepException(this.message);

  @override
  String toString() => 'ViaCepInvalidCepException: $message';
}

class ViaCepRequestException implements Exception {
  final String message;

  ViaCepRequestException(this.message);

  @override
  String toString() => 'ViaCepRequestException: $message';
}

class ViaCepUnknownException implements Exception {
  final String message;

  ViaCepUnknownException(this.message);

  @override
  String toString() => 'ViaCepUnknownException: $message';
}
