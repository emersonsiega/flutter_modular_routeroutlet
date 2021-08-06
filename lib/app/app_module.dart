// app_module.dart
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/modules.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [];

  // Provide all the routes for your module
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/onboarding', module: OnboardingModule()),
      ];
}
