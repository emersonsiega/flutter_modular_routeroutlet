import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingName extends StatefulWidget {
  @override
  _OnboardingNameState createState() => _OnboardingNameState();
}

class _OnboardingNameState extends State<OnboardingName> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("/onboarding/steps/name"),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Modular.to.navigate(
                    '/onboarding/steps/email',
                    replaceAll: false,
                  ),
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
