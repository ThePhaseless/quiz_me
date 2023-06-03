import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.onPress, {Key? key}) : super(key: key);

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Let's Quiz",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        ElevatedButton(
          onPressed: onPress,
          child: const Text("Start"),
        ),
      ],
    );
  }
}
