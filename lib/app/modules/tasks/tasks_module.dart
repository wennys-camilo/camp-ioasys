import 'package:flutter_modular/flutter_modular.dart';
import 'tasks_page.dart';
import 'tasks_store.dart';

class TasksModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TasksStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const TasksPage()),
  ];
}
