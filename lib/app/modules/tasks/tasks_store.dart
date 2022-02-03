import 'package:calc_imc/app/core/data/models/task.dart';
import 'package:mobx/mobx.dart';
part 'tasks_store.g.dart';

class TasksStore = _TasksStoreBase with _$TasksStore;

abstract class _TasksStoreBase with Store {
  @observable
  var tasksList = ObservableList<Task>();

  @action
  void add({required String name}) {
    tasksList.add(Task(name: name));
  }

  @action
  onChangeStatus({required bool value, required int index}) {
    tasksList[index].status = value;
  }
}
