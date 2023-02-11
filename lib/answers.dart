import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;

  Answers(this.selectHandler,String answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Text('answer 1'),
          style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    );
  }
}
