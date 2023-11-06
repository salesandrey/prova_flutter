// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  Computed<bool>? _$errorAccountValidationComputed;

  @override
  bool get errorAccountValidation => (_$errorAccountValidationComputed ??=
          Computed<bool>(() => super.errorAccountValidation,
              name: 'LoginControllerBase.errorAccountValidation'))
      .value;
  Computed<bool>? _$errorPasswordValidationComputed;

  @override
  bool get errorPasswordValidation => (_$errorPasswordValidationComputed ??=
          Computed<bool>(() => super.errorPasswordValidation,
              name: 'LoginControllerBase.errorPasswordValidation'))
      .value;

  late final _$accountAtom =
      Atom(name: 'LoginControllerBase.account', context: context);

  @override
  String get account {
    _$accountAtom.reportRead();
    return super.account;
  }

  @override
  set account(String value) {
    _$accountAtom.reportWrite(value, super.account, () {
      super.account = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'LoginControllerBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$errorAccountAtom =
      Atom(name: 'LoginControllerBase.errorAccount', context: context);

  @override
  String get errorAccount {
    _$errorAccountAtom.reportRead();
    return super.errorAccount;
  }

  @override
  set errorAccount(String value) {
    _$errorAccountAtom.reportWrite(value, super.errorAccount, () {
      super.errorAccount = value;
    });
  }

  late final _$errorPasswordAtom =
      Atom(name: 'LoginControllerBase.errorPassword', context: context);

  @override
  String get errorPassword {
    _$errorPasswordAtom.reportRead();
    return super.errorPassword;
  }

  @override
  set errorPassword(String value) {
    _$errorPasswordAtom.reportWrite(value, super.errorPassword, () {
      super.errorPassword = value;
    });
  }

  late final _$LoginControllerBaseActionController =
      ActionController(name: 'LoginControllerBase', context: context);

  @override
  dynamic setAccount(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setAccount');
    try {
      return super.setAccount(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErrorAccount(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setErrorAccount');
    try {
      return super.setErrorAccount(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErrorPassword(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setErrorPassword');
    try {
      return super.setErrorPassword(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic redirectPrivacyPage() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.redirectPrivacyPage');
    try {
      return super.redirectPrivacyPage();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic login() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.login');
    try {
      return super.login();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
account: ${account},
password: ${password},
errorAccount: ${errorAccount},
errorPassword: ${errorPassword},
errorAccountValidation: ${errorAccountValidation},
errorPasswordValidation: ${errorPasswordValidation}
    ''';
  }
}
