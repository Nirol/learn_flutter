import '/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => _questionIndex += 1);
  }

  var questions = ['question 1', 'question2'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions.elementAt(_questionIndex),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('button text'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('button text'),
            ),
          ],
        ),
      ),
    );
  }
}
