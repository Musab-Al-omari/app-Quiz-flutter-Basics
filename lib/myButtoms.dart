import 'package:flutter/material.dart';

class MyButtoms extends StatelessWidget {
  final Function selectHandler;
  final Map myObject;

  MyButtoms(this.selectHandler, this.myObject);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => {selectHandler(myObject['score'])},
        child: Text(myObject['text']),
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // background
          onPrimary: Colors.yellow, // foreground
        ),
      ),
    );
  }
}
