


import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageDataSource {

  final String textKey = "TEXT_LIST";

  Future<List<String>> getList() async {

    final SharedPreferences shared = await SharedPreferences.getInstance();

    List<String>? list = shared.getStringList(textKey);

    return list ?? [];
  }

  Future<void> saveList(List<String> value) async {

    final SharedPreferences shared = await SharedPreferences.getInstance();

    await shared.setStringList(textKey, value);

  }






}