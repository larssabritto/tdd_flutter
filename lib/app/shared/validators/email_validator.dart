class EmailValidator {
  String? validate({String? email}) {
    if (email == null || email == '') {
      return 'O e-mail é Obrigatório';
    }
    final emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!emailValid.hasMatch(email)) {
      return 'O e-mail é Inválido';
    }
    return null;
  }
}
