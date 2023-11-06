



import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:tecnical_test/login/domain/utils/login_validate_utils.dart';
import 'package:url_launcher/url_launcher.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {

  final String credentialLogin = "admin";
  final String credentialPassword = "1234";

  final LoginValidateUtils _validateFields = LoginValidateUtils();

  @observable
  String account = "";

  @observable
  String password = "";

  @observable
  String errorAccount = "";

  @observable
  String errorPassword = "";

  @computed
  bool get errorAccountValidation => errorAccount.isNotEmpty;

  @computed
  bool get errorPasswordValidation => errorPassword.isNotEmpty;

  @action
  setAccount(String value) => account = value;

  @action
  setPassword(String value) => password = value;

  @action
  setErrorAccount(String value) => errorAccount = value;

  @action
  setErrorPassword(String value) => errorPassword = value;
  
  @action
  redirectPrivacyPage() => launchUrl(Uri.parse("https://www.google.com/"));

  @action
  login() {

    setErrorAccount("");
    setErrorPassword("");

    (bool,String) validateAccount = _validateFields.validateAccount(account);

    (bool,String) validatePassword = _validateFields.validatePassword(password);

    if(validateAccount.$1 && validatePassword.$1) {

      if(account == credentialLogin && password == credentialPassword) {
        Modular.to.pushReplacementNamed("/home");
      }

      else{
        setErrorAccount("Usuario e/ou Senha invalidos. Tente novamente.");
      }
    }

    else {
      setErrorAccount(validateAccount.$2);
      setErrorPassword(validatePassword.$2);
    }
  }

}