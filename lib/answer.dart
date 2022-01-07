import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selecthandler, answer_text;

  Answer({this.selecthandler,this.answer_text});


  @override
  Widget build(BuildContext context) {
    return Container(
      child:  RaisedButton(child: Text(answer_text), onPressed: selecthandler,
      ),
    );
  }
}