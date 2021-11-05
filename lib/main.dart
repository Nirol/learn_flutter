import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() => questionIndex += 1);
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
            Text(
              questions.elementAt(questionIndex),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('button text'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('button text'),
            ),
          ],
        ),
      ),
    );
  }
}
