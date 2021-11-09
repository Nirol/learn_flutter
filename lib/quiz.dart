import '/question.dart';
import 'package:flutter/material.dart';
import '/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions.elementAt(questionIndex)['question'],
        ),
        ...(questions.elementAt(questionIndex)['answers'] as List<String>)
            .map((answer) {
          return Answer(answer, answerQuestion);
        }).toList()
      ],
    );
  }
}
