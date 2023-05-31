import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen(this.onPress, {Key? key}) : super(key: key);

  Function onPress;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Let's Quiz",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        ElevatedButton(
          child: Text("Start"),
          onPressed: onPress,
        ),
      ],
    );
  }
}
