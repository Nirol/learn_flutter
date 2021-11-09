import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    if (resultScore <= 8)
      return 'You are awsome';
    else if (resultScore <= 12)
      return 'You are cool';
    else
      return 'oh lol';
  }

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: Text('Reset Quiz!', style: TextStyle(color: Colors.amber)),
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
