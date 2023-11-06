



import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../domain/entities/user_entity.dart';

class LoginDataSource {


  Future<UserEntity?> login() async {

    Uri endpoint = Uri.parse("https://6548ed32dd8ebcd4ab23e58d.mockapi.io/api/v1/login/users?id=0");

      Response response = await get(endpoint);

      if(response.statusCode == 200) {

        List<dynamic> result = jsonDecode(response.body);

        return UserEntity.fromJson(result.first);
      }

      return null;

  }


}