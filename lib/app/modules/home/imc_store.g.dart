// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImcStore on _ImcStoreBase, Store {
  final _$_imcAtom = Atom(name: '_ImcStoreBase._imc');

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

  final _$_weightAtom = Atom(name: '_ImcStoreBase._weight');

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

  final _$_heightAtom = Atom(name: '_ImcStoreBase._height');

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

  final _$_degreeAtom = Atom(name: '_ImcStoreBase._degree');

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

  final _$_ImcStoreBaseActionController =
      ActionController(name: '_ImcStoreBase');

  @override
  dynamic onChangeWeight(String value) {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.onChangeWeight');
    try {
      return super.onChangeWeight(value);
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangeHeight(String value) {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.onChangeHeight');
    try {
      return super.onChangeHeight(value);
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
