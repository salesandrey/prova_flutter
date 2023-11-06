
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/login/login_module.dart';

import 'home/home_module.dart';

class AppModule extends Module {

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: LoginModule());
    r.module("/home", module: HomeModule());
  }
}