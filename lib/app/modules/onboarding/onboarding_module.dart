// app_module.dart
import 'package:flutter_modular/flutter_modular.dart';
import 'onboarding.dart';

class OnboardingModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [];

  // Provide all the routes for your module
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => OnboardingIntroPage()),
        ChildRoute(
          '/steps',
          child: (_, __) => OnboardingPage(),
          children: [
            ChildRoute('/name', child: (_, __) => OnboardingName()),
            ChildRoute('/email', child: (_, __) => OnboardingEmail()),
          ],
        ),
      ];
}
