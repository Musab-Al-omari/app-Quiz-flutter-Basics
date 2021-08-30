import 'package:flutter/material.dart';
import 'myButtoms.dart';
import 'questions.dart';

class myList extends StatelessWidget {
  final int _questionsIndex;
  final Function _pressed;
  final List<Map<String, Object>> _questions;
  myList(this._questions, this._questionsIndex, this._pressed);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          _questions[_questionsIndex]['questionsText'],
        ),
        ...(_questions[_questionsIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return MyButtoms(_pressed, answer);
        })
      ],
    );
  }
}
