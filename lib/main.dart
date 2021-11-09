import 'package:flutter/material.dart';
import '/quiz.dart';
import '/result.dart';

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
  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() => _questionIndex += 1);
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'question': 'how are you doing?',
      'answers': [
        {'text': 'a', 'score': 5},
        {'text': 'b', 'score': 1},
        {'text': 'c', 'score': 2},
      ],
    },
    {
      'question': 'what is your favorite color?',
      'answers': [
        {'text': 'a', 'score': 3},
        {'text': 'b', 'score': 4},
        {'text': 'a', 'score': 5},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
