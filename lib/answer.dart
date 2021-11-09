import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectAnswerHandler;

  Answer(this.answerText, this.selectAnswerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectAnswerHandler,
        child: Text(answerText),
      ),
    );
  }
}
