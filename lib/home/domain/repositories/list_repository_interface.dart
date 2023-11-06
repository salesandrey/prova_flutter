


abstract interface class IListRepository {

  Future<List<String>> getList();

  Future<void> saveList(List<String> list);

}