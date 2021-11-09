import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    if (resultScore <= 8)
      return 'You are awsome';
    else if (resultScore <= 12)
      return 'You are cool';
    else
      return 'oh lol';
  }

  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
    );
  }
}
