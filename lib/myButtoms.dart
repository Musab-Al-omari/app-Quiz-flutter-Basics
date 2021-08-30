import 'package:flutter/material.dart';

class MyButtoms extends StatelessWidget {
  final Function selectHandler;
  final String text;

  MyButtoms(this.selectHandler, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // background
          onPrimary: Colors.yellow, // foreground
        ),
      ),
    );
  }
}
