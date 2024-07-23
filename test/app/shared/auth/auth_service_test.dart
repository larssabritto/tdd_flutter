import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/app/shared/auth/auth_service.dart';

void main() {
  late AuthService auth;

  setUp(() {
    auth = AuthService();
  });

  group(
    'Validação do castro',
    () {
      test(
        'deve retornar uma mensagem para um e-mail e senha inválidos',
        () {
          final result = auth.register('larissa', '123');
          expect(result, isA<String>());
        },
      );
      test(
        'deve retornar uma mensagem para um e-mail e senha válidos',
        () {
          final result = auth.register('larssabritto@gmail.com', 'senha1234');
          expect(result, isNull);
        },
      );
    },
  );
}
