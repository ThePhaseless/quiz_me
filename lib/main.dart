import 'package:flutter/material.dart';
import 'package:flutter_app/question_screen.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndx = 0;
  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = WelcomeScreen(nextScreen);
  }

  void nextScreen() {
    setState(
      () => currentScreen = QuestionScreen(
        question: "question",
        questionIndx: questionIndx,
        answearList: const [
          "1",
          "2",
        ],
      ),
    );
  }

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(child: currentScreen),
      ),
    );
  }
}
