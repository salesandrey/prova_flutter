




import 'package:tecnical_test/home/domain/repositories/list_repository_interface.dart';

class GetListUseCase {

  final IListRepository repository;

  GetListUseCase({required this.repository});

  Future<List<String>> call() async => await repository.getList();

}