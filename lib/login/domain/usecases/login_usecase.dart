



import 'dart:async';
import 'dart:io';

import 'package:tecnical_test/login/domain/entities/user_entity.dart';
import 'package:tecnical_test/login/domain/repositories/login_repository_interface.dart';

class LoginUseCase{

   final ILoginRepository repository;

  LoginUseCase(this.repository);

   Future<(bool, String)> call(String account, String password) async {

      try {
         UserEntity? user = await repository.login();

         if(account == user?.account && password == user?.password){
            return (true,"");
         } else { return (false, "Usuario e/ou Senha invalidos. Tente novamente."); }

      } on TimeoutException {
         return (false, "Falha com a resposta do servidor.");
      } on SocketException {
         return (false, "Sem conexão com a internet para realizar login.");
      } catch(e) {
        return (false, "Usuario e/ou Senha invalidos. Tente novamente.");
      }



   }


}