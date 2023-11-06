



import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tecnical_test/login/domain/utils/login_validate_utils.dart';
import 'package:tecnical_test/main.dart' as app;

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  LoginValidateUtils utils = LoginValidateUtils();

  group("Login Tests - Unit", () {

    test("Usuario com nome vazio", () async {

      (bool,String) result = utils.validateAccount("");

      expect(result.$1, false);
    });

    test("Senha com caracter especial", () async {

      (bool,String) result = utils.validatePassword("**123");

      expect(result.$1, false);

    });

    test("Senha com espaço", () async {

      (bool,String) result = utils.validatePassword("  1234");

      expect(result.$1, false);
    });

    test("Senha correta", () async {

      (bool,String) result = utils.validatePassword("1234");

      expect(result.$1, true);
    });
  });
}