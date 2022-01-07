import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final  answwerquestion;
  final  questionIndex;
  Quiz({this.questions,this.answwerquestion,this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'],
                    //  questions[_questionIndex]['questionText'] ,
                  ),

                  ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map(
                    (answer) {
                      return Answer(
                        answer_text: answer['text'],
                        selecthandler: ()=>answwerquestion(answer['score']),
                      );
                      // return Answer(_answwerquestion , answer);
                    },
                  ).toList()

                  //  Answer(selecthandler: _answwerquestion,answer_text: "Answer 1",),
                  //   Answer(selecthandler: _answwerquestion,answer_text: "Answer 2",),
                  //   Answer(selecthandler: _answwerquestion,answer_text: "Answer 3",),
                ],
              );
  }
}