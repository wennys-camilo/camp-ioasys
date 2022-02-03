import 'package:mobx/mobx.dart';

part 'task.g.dart';

class Task = _TaskBase with _$Task;

abstract class _TaskBase with Store {
  final String name;

  @observable
  bool status;

  _TaskBase({
    required this.name,
    this.status = false,
  });
}
