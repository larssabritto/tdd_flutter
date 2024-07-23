import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/app/pages/registrer_page.dart';

void main() {
  setUp(() {});

  group(
    'Valicação de Registro',
    () {
      testWidgets(
          'deve confirmar campo de e-mail aparecer na tela corretamente',
          (tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: RegisterPage(),
          ),
        );
        final emailKey = find.byKey(const Key('email_key'));
        expect(emailKey, findsWidgets);
      });

      testWidgets(
        'deve exibir uma SnackBar com a mensagem de erro caso o e-mail seja nulo',
        (tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              home: RegisterPage(),
            ),
          );
          final registerButton = find.byKey(const Key('register_button_key'));
          await tester.tap(registerButton);
          await tester.pumpAndSettle();
          find.text('O e-mail é obrigatório');
        },
      );
    },
  );
}
