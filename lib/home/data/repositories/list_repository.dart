
import 'package:tecnical_test/home/data/datasource/local_storage_datasource.dart';

import '../../domain/repositories/list_repository_interface.dart';

class ListRepository implements IListRepository {

  final LocalStorageDataSource datasource;

  ListRepository({required this.datasource});

  @override
  Future<List<String>> getList() async => await datasource.getList();

  @override
  Future<void> saveList(List<String> list) async => await datasource.saveList(list);

}