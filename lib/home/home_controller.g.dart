// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<bool>? _$errorTextValidationComputed;

  @override
  bool get errorTextValidation => (_$errorTextValidationComputed ??=
          Computed<bool>(() => super.errorTextValidation,
              name: 'HomeControllerBase.errorTextValidation'))
      .value;

  late final _$textListAtom =
      Atom(name: 'HomeControllerBase.textList', context: context);

  @override
  ObservableList<String> get textList {
    _$textListAtom.reportRead();
    return super.textList;
  }

  @override
  set textList(ObservableList<String> value) {
    _$textListAtom.reportWrite(value, super.textList, () {
      super.textList = value;
    });
  }

  late final _$onUpdateTextAtom =
      Atom(name: 'HomeControllerBase.onUpdateText', context: context);

  @override
  (bool, int) get onUpdateText {
    _$onUpdateTextAtom.reportRead();
    return super.onUpdateText;
  }

  @override
  set onUpdateText((bool, int) value) {
    _$onUpdateTextAtom.reportWrite(value, super.onUpdateText, () {
      super.onUpdateText = value;
    });
  }

  late final _$errorTextAtom =
      Atom(name: 'HomeControllerBase.errorText', context: context);

  @override
  String get errorText {
    _$errorTextAtom.reportRead();
    return super.errorText;
  }

  @override
  set errorText(String value) {
    _$errorTextAtom.reportWrite(value, super.errorText, () {
      super.errorText = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('HomeControllerBase.init', context: context);

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$addOrUpdateAsyncAction =
      AsyncAction('HomeControllerBase.addOrUpdate', context: context);

  @override
  Future<void> addOrUpdate(String value) {
    return _$addOrUpdateAsyncAction.run(() => super.addOrUpdate(value));
  }

  late final _$removeAsyncAction =
      AsyncAction('HomeControllerBase.remove', context: context);

  @override
  Future<void> remove(int index) {
    return _$removeAsyncAction.run(() => super.remove(index));
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic setOnUpdateText((bool, int) value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setOnUpdateText');
    try {
      return super.setOnUpdateText(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic requestFocus() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.requestFocus');
    try {
      return super.requestFocus();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErrorText(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setErrorText');
    try {
      return super.setErrorText(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic turnOnUpdate(int index, String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.turnOnUpdate');
    try {
      return super.turnOnUpdate(index, value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic update(int index, String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.update');
    try {
      return super.update(index, value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textList: ${textList},
onUpdateText: ${onUpdateText},
errorText: ${errorText},
errorTextValidation: ${errorTextValidation}
    ''';
  }
}
