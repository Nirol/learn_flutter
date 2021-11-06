import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionsText;

  Question(this.questionsText);
  @override
  Widget build(BuildContext context) {
    return Text(questionsText);
  }
}
