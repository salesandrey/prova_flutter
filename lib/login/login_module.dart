import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/login/login_controller.dart';

import 'login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.add(LoginController.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const LoginPage());
  }
}