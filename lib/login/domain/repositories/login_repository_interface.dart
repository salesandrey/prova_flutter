import 'package:tecnical_test/login/domain/entities/user_entity.dart';

abstract interface class ILoginRepository {

  Future<UserEntity?> login();

}