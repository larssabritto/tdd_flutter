class PasswordValidator {
  String? validate({String? password}) {
    if (password == null || password == '') {
      return 'A senha é obrigatória';
    }

    if (password.length < 6) {
      return 'A senha deve possuir pelo menos 6 caracteres';
    }

    final RegExp senhaAlfanumericaRegex = RegExp(r'^[a-zA-Z0-9]{8,}$');
    if (!senhaAlfanumericaRegex.hasMatch(password)) {
      return 'A senha deve ser alfanumerica';
    }
    return null;
  }
}
