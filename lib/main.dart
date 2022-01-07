import 'package:flutter/material.dart';
// import 'package:quiz_app/answer.dart';
// import 'package:quiz_app/question.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _total_score=0;

 void _restart_quiz(){
    setState(() {
      var _questionIndex = 0;
  var _total_score=0;
    });
  }

  void _answwerquestion(int score) {
    _total_score=_total_score+score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("answer choosen");
    print(_questionIndex);
  }

 

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'cow', 'score': 10},
          {'text': 'buffalo', 'score': 7},
          {'text': 'dog', 'score': 5},
          {'text': 'cat', 'score': 3},
        ],
      },
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          {'text': 'blue', 'score': 5},
          {'text': 'red', 'score': 3},
          {'text': 'green', 'score': 10},
          {'text': 'yellow', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favourite game?',
        'answers': [
          {'text': 'football', 'score': 10},
          {'text': 'cricket', 'score': 7},
          {'text': 'volleyball', 'score': 5},
          {'text': 'badminton', 'score': 3},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answwerquestion: _answwerquestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(result_score: _total_score,restart_handler: _restart_quiz),
      ),
    );
  }
}
