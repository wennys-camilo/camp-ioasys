import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
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
    _imc = double.parse(_weight!.replaceAll(',', '.')) /
        (double.parse(_height!.replaceAll(',', '.')) *
            double.parse(_height!.replaceAll(',', '.')));
    _degree = grau(_imc!);
  }

  String? grau(double imc) {
    if (imc < 18.5 || (imc >= 18.5 && imc <= 24.9)) {
      return 'Obesidade Grau 0 ';
    } else if (imc >= 25 && imc <= 29.9) {
      return 'Obesidade Grau I ';
    } else if (imc >= 30 && imc <= 39.9) {
      return 'Obesidade Grau II ';
    } else if (imc >= 40) {
      return 'Obesidade Grau III ';
    }
  }

  void reset() {
    _degree = null;
    _imc = null;
    _weight = null;
    _height = null;
  }
}
