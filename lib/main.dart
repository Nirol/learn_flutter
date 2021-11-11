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
  var _textState = true;

  void _changeButtonText() {
    setState(() => _textState = !_textState);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            _textState ? Text('APPP !!!') : Text("KEK"),
            ElevatedButton(
              onPressed: _changeButtonText,
              child: Text('change text!'),
            ),
          ],
        ),
      ),
    );
  }
}
