

class LoginValidateUtils {

  (bool,String) validateAccount(String account) {

    if(account.isEmpty) return (false,"O campo usuário não pode ser vazio.");

    if(account.endsWith(" ")) return (false, "O campo usuário não pode terminar com espaço.");

    return (true,"");
  }

  (bool, String) validatePassword(String password) {

    final regex = RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?~\\\s]');

    if(password.isEmpty) return (false,"O campo senha não pode ser vazio.");

    if(password.length < 2) return (false, "O campo senha não pode conter menos que 2 caracteres.");

    if(password.endsWith(" ")) return (false, "O campo senha não pode terminar com espaço.");

    if(regex.hasMatch(password)) return (false, "O campo senha não pode conter caracteres especiais");

    return (true,"");
  }
}