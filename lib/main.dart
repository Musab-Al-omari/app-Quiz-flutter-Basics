import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var questions = ['who are you ', 'why you are here'];
  void _pressed() {
    setState(() {
      _questionsIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: [
            Text(questions[_questionsIndex]),
            ElevatedButton(
                onPressed: () => _pressed(), child: Text('answer 1')),
            ElevatedButton(
                onPressed: () => _pressed(), child: Text('answer 2')),
            ElevatedButton(
                onPressed: () => _pressed(), child: Text('answer 3')),
          ],
        ),
      ),
    );
  }
}
