import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.question,
    required this.questionIndx,
    required this.answearList,
  });

  final String question;
  final int questionIndx;
  final List<String> answearList;

  @override
  State createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text("Question $widget.questionIndx")],
    );
  }
}
