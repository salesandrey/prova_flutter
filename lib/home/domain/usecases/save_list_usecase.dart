




import 'package:tecnical_test/home/domain/repositories/list_repository_interface.dart';

class SaveListUseCase {

  final IListRepository repository;

  SaveListUseCase(this.repository);

  Future<void> call(List<String> list) async => await repository.saveList(list);

}