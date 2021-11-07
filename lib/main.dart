import '/question.dart';
import 'package:flutter/material.dart';
import '/answer.dart';

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

  static const questions = const [
    {
      'question': 'how are you doing?',
      'answers': ['a', 'b', 'c'],
    },
    {
      'question': 'what is your favorite color?',
      'answers': ['bb', 'cc', 'dd'],
    },
  ];
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
              questions.elementAt(_questionIndex)['question'],
            ),
            ...(questions.elementAt(_questionIndex)['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
