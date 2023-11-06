




import 'dart:convert';

class UserEntity{

  final String account;
  final String password;

  UserEntity({required this.account,required this.password});

  factory UserEntity.fromRawJson(String str) => UserEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
    account: json["account"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "account": account,
    "password": password,
  };


}