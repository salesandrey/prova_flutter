



import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:tecnical_test/home/domain/usecases/get_list_usecase.dart';
import 'package:tecnical_test/home/domain/usecases/save_list_usecase.dart';

import 'domain/utils/home_validate_utils.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {

  final GetListUseCase _getlist = Modular.get();
  final SaveListUseCase _saveList = Modular.get();

  final HomeValidateUtils _validateFields = HomeValidateUtils();

  TextEditingController editingController = TextEditingController();
  FocusNode focus = FocusNode();

  @observable
  ObservableList<String> textList = <String>[].asObservable();

  @observable
  (bool,int) onUpdateText = (false,0);

  @action
  setOnUpdateText((bool,int) value) => onUpdateText = value;

  @action
  requestFocus() => focus.requestFocus();

  @action
  init() async {

    List<String> result = await _getlist.call();

    textList = result.asObservable();
  }

  @observable
  String errorText = "";

  @computed
  bool get errorTextValidation => errorText.isNotEmpty;

  @action
  setErrorText(String value) => errorText = value;

  @action
  Future<void> addOrUpdate(String value) async {

    setErrorText("");

    (bool,String) validateText = _validateFields.validateText(value);

    if(validateText.$1) {

      if(onUpdateText.$1) {
        update(onUpdateText.$2, value);
      } else {
        textList.add(value);
      }

      await _saveList.call(textList);

      requestFocus();
      editingController.text = "";
    }

    else {
      setErrorText(validateText.$2);
    }
  }

  @action
  Future<void> remove(int index) async {
    textList.removeAt(index);
    await _saveList.call(textList);

    requestFocus();
  }

    @action
    turnOnUpdate(int index, String value) {
      setOnUpdateText((true,index));

      editingController.text = value;
    }

    @action
    update(int index, String value) {

      textList[index] = value;

      setOnUpdateText((false,0));
    }
}

