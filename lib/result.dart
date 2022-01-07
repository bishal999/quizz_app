import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // final resultText;
  // Result(this.resultText);
  final result_score;
  final  restart_handler;
  Result({this.result_score, this.restart_handler});
  String get resultPhrase {
    String resultText;
    if (result_score >= 20 && result_score <= 30) {
      resultText = "You are awesome!";
    } else if (result_score >= 13 && result_score <= 19) {
      resultText = "You are innocent!";
    } else {
      resultText = "You are bad!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        //  Text(result_score),
        FlatButton( child: Text("Restart"),onPressed: restart_handler),
      ],
    ));
  }
}
