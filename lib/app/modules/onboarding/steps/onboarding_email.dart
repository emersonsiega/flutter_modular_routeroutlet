import 'package:flutter/material.dart';

class OnboardingEmail extends StatefulWidget {
  @override
  _OnboardingEmailState createState() => _OnboardingEmailState();
}

class _OnboardingEmailState extends State<OnboardingEmail> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("/onboarding/steps/email"),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
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
