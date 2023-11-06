


import 'package:tecnical_test/login/data/datasources/login_datasource.dart';
import 'package:tecnical_test/login/domain/entities/user_entity.dart';
import 'package:tecnical_test/login/domain/repositories/login_repository_interface.dart';

class LoginRepository implements ILoginRepository {

  final LoginDataSource datasource;

  LoginRepository({required this.datasource});

  @override
  Future<UserEntity?> login() async => await datasource.login();

}