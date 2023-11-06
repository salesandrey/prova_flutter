import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/login/data/datasources/login_datasource.dart';
import 'package:tecnical_test/login/domain/usecases/login_usecase.dart';
import 'package:tecnical_test/login/login_controller.dart';

import 'data/repositories/login_repository.dart';
import 'domain/repositories/login_repository_interface.dart';
import 'login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.add(LoginController.new);
    i.add(LoginDataSource.new);
    i.add<ILoginRepository>(LoginRepository.new);
    i.add(LoginUseCase.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const LoginPage());
  }
}