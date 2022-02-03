import 'package:mobx/mobx.dart';

part 'imc_store.g.dart';

class ImcStore = _ImcStoreBase with _$ImcStore;

abstract class _ImcStoreBase with Store {
  @observable
  double? _imc;

  @observable
  String? _weight;

  @observable
  String? _height;

  @observable
  String? _degree;

  double? get imc => _imc;

  String? get degree => _degree;

  @action
  onChangeWeight(String value) => _weight = value;

  @action
  onChangeHeight(String value) => _height = value;

  void fetchImc() {
    double weightParse = double.parse(_weight!.replaceAll(',', '.'));
    double heightParse = double.parse(_height!.replaceAll(',', '.'));
    _imc = weightParse / (heightParse * heightParse);
    _degree = degreeClassification(imc: _imc!);
  }

  String? degreeClassification({required double imc}) {
    if (imc < 18.5 || (imc >= 18.5 && imc < 25)) {
      return 'Obesidade Grau 0 ';
    } else if (imc >= 25 && imc < 30) {
      return 'Obesidade Grau I ';
    } else if (imc >= 30 && imc < 40) {
      return 'Obesidade Grau II ';
    } else if (imc >= 40) {
      return 'Obesidade Grau III ';
    }
  }

  void resetForm() {
    _degree = null;
    _imc = null;
    _weight = null;
    _height = null;
  }
}
