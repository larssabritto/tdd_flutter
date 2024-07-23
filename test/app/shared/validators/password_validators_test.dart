import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/app/shared/validators/password_validator.dart';

void main() {
  late PasswordValidator passwordValidator;

  setUp(() {
    passwordValidator = PasswordValidator();
  });

  group(
    'validação da senha!',
    () {
      test(
        'deve retornar uma mensagem de erro caso a senha seja Null!',
        () {
          final result = passwordValidator.validate();

          expect(result, equals('A senha é obrigatória'));
        },
      );
      test(
        'deve retornar uma mensagem de erro caso o password seja vázia',
        () {
          final result = passwordValidator.validate(password: '');
          expect(result, equals('A senha é obrigatória'));
        },
      );
      test(
        'deve retornar uma mensagem de erro caso senha seja menor que 6 caracteres!',
        () {
          final result = passwordValidator.validate(password: 'seh');

          expect(
              result, equals('A senha deve possuir pelo menos 6 caracteres'));
        },
      );
      test(
        'deve retornar uma mensagem de erro caso senha não seja alfanumérica!',
        () {
          final result = passwordValidator.validate(password: 'senha1l');

          expect(result, equals('A senha deve ser alfanumerica'));
        },
      );
      test(
        'deve retornar null caso a senha seja válida',
        () {
          final result = passwordValidator.validate(password: 'senha1234');

          expect(result, isNull);
        },
      );
    },
  );
}
