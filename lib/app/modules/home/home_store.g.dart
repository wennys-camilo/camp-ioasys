// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$_imcAtom = Atom(name: 'HomeStoreBase._imc');

  @override
  double? get _imc {
    _$_imcAtom.reportRead();
    return super._imc;
  }

  @override
  set _imc(double? value) {
    _$_imcAtom.reportWrite(value, super._imc, () {
      super._imc = value;
    });
  }

  final _$_weightAtom = Atom(name: 'HomeStoreBase._weight');

  @override
  String? get _weight {
    _$_weightAtom.reportRead();
    return super._weight;
  }

  @override
  set _weight(String? value) {
    _$_weightAtom.reportWrite(value, super._weight, () {
      super._weight = value;
    });
  }

  final _$_heightAtom = Atom(name: 'HomeStoreBase._height');

  @override
  String? get _height {
    _$_heightAtom.reportRead();
    return super._height;
  }

  @override
  set _height(String? value) {
    _$_heightAtom.reportWrite(value, super._height, () {
      super._height = value;
    });
  }

  final _$_degreeAtom = Atom(name: 'HomeStoreBase._degree');

  @override
  String? get _degree {
    _$_degreeAtom.reportRead();
    return super._degree;
  }

  @override
  set _degree(String? value) {
    _$_degreeAtom.reportWrite(value, super._degree, () {
      super._degree = value;
    });
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  dynamic onChangeWeight(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.onChangeWeight');
    try {
      return super.onChangeWeight(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeHeight(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.onChangeHeight');
    try {
      return super.onChangeHeight(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
