import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/app/shared/validators/email_validator.dart';

void main() {
  late EmailValidator emailValidator;

  setUp(() {
    emailValidator = EmailValidator();
  });

  group(
    "validação do e-mail!",
    () {
      test(
        'deve retornar uma mensagem de erro caso o e-mail seja null',
        () {
          final result = emailValidator.validate();
          expect(result, equals('O e-mail é Obrigatório'));
        },
      );

      test(
        'deve retornar uma mensagem de erro caso o e-mail seja vazio',
        () {
          final result = emailValidator.validate(email: '');
          expect(result, equals('O e-mail é Obrigatório'));
        },
      );

      test(
        'deve retornar uma mensagem de erro caso o e-mail seja inválido',
        () {
          final result = emailValidator.validate(email: 'larissa');
          expect(result, equals('O e-mail é Inválido'));
        },
      );

      test(
        'deve retornar null caso o e-mail seja válido',
        () {
          final result =
              emailValidator.validate(email: 'larssabritto@gmail.com');
          expect(result, isNull);
        },
      );
    },
  );
}
