import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Questions extends StatelessWidget {
  var questionText;
  Questions(questionText) {
    this.questionText = questionText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(30),
    );
  }
}
