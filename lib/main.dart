import 'package:flutter/material.dart';
import 'myList.dart';

void main() {
  runApp(MyApp());
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
  int _totalScore = 0;
  var _fainalResult = '';
  var _questions = [
    {
      'questionsText': 'what\'s your favorite color',
      'answers': [
        {'text': 'Red', 'score': 20},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 40},
        {'text': 'Green', 'score': 30},
      ]
    },
    {
      'questionsText': 'what\'s your favorite animal',
      'answers': [
        {'text': 'Rabit', 'score': 40},
        {'text': 'Snake', 'score': 20},
        {'text': 'Chicken', 'score': 30},
        {'text': 'Wolf', 'score': 10},
      ]
    },
    {
      'questionsText': 'what\'s your favorite qoute of these',
      'answers': [
        {'text': 'these guys are not my problem ', 'score': 20},
        {'text': 'I will eat them all ', 'score': 10},
        {'text': 'i will do my best', 'score': 40},
        {'text': 'if i have time may be i will help', 'score': 30},
      ]
    },
    {
      'questionsText': 'do you believe there is hope in our world',
      'answers': [
        {'text': 'Yes, but for lucky people ', 'score': 20},
        {'text': 'Yes ,the hope is every where', 'score': 40},
        {'text': 'Yes ,but you need to waite for it', 'score': 30},
        {'text': 'No, I don\'t believe ', 'score': 10},
      ]
    },
  ];

  void _pressed(int score) {
    _totalScore += score;
    if (_questionsIndex < _questions.length) {
      setState(() {
        _questionsIndex++;
      });
    }

    if (_totalScore <= 80) {
      _fainalResult = 'You are a dark person go to hell';
    } else if (_totalScore <= 100) {
      _fainalResult = 'You have  self trust issues be mor confident  ';
    } else if (_totalScore <= 130) {
      _fainalResult = 'You have a normal personality ';
    } else {
      _fainalResult = 'You have a great  persone  keep up';
    }
  }

  void onReset() {
    setState(() {
      _questionsIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: (_questionsIndex < _questions.length)
            ? myList(_questions, _questionsIndex, _pressed)
            : Center(
                child: Column(
                  children: [
                    Text(
                      _fainalResult,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: onReset,
                      child: Text('Reset'),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
