import 'package:flutter_modular/flutter_modular.dart';
import 'modules/imc/imc_module.dart';
import 'modules/login/login_module.dart';
import 'modules/tasks/tasks_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/imc', module: ImcModule()),
    ModuleRoute('/tasks', module: TasksModule()),
  ];
}
