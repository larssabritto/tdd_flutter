import 'package:tdd_flutter/app/shared/validators/email_validator.dart';
import 'package:tdd_flutter/app/shared/validators/password_validator.dart';

class AuthService {
  register(String? email, String? password) {
    final emailError = EmailValidator().validate(email: email);
    final passwordError = PasswordValidator().validate(password: password);
    return emailError ?? passwordError;
  }
}
