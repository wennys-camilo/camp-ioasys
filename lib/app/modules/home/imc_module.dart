import 'package:flutter_modular/flutter_modular.dart';
import 'imc_store.dart';
import 'imc_page.dart';

class ImcModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ImcStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const HomePage(),
        transition: TransitionType.fadeIn),
  ];
}
