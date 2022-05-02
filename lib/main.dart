import 'package:basic_quiz_app/result.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  static const _questions = [
    {
      'questionText': 'What is your favorite colour?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['Dog', 'Cat', 'Snake', 'Spider'],
    },
    {
      'questionText': 'Who is your favorite class?',
      'answers': ['Math', 'C++', 'Cyber Security', 'Physics'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz App!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
