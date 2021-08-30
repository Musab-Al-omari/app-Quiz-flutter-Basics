import 'package:flutter/material.dart';
import 'questions.dart';
import 'myButtoms.dart';

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

  var questions = [
    {
      'questionsText': 'what\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionsText': 'what\'s your favorite animal',
      'answers': ['Wolf', 'Rabit', 'Snake', 'Lion']
    },
    {
      'questionsText': 'what\'s your favorite Browser',
      'answers': ['Google', 'Fox', 'Internet Explorer', 'Opera']
    },
  ];

  void _pressed() {
    setState(() {
      _questionsIndex++;
    });
  }

  Widget build(BuildContext context) {
    print(questions[0]['questionsText']);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: [
            Questions(
              questions[_questionsIndex]['questionsText'],
            ),
            ...(questions[_questionsIndex]['answers'] as List<String>)
                .map((answer) {
              return MyButtoms(_pressed, answer);
            })
          ],
        ),
      ),
    );
  }
}
