import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/home/data/datasource/local_storage_datasource.dart';
import 'package:tecnical_test/home/data/repositories/list_repository.dart';
import 'package:tecnical_test/home/domain/repositories/list_repository_interface.dart';
import 'package:tecnical_test/home/domain/usecases/get_list_usecase.dart';
import 'package:tecnical_test/home/domain/usecases/save_list_usecase.dart';
import 'package:tecnical_test/home/home_controller.dart';
import 'package:tecnical_test/home/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
      i.add(HomeController.new);
      i.add(LocalStorageDataSource.new);
      i.add<IListRepository>(ListRepository.new);
      i.add(GetListUseCase.new);
      i.add(SaveListUseCase.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const HomePage());
  }
}