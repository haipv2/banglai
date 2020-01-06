import 'package:bang_lai/enums/question_type.dart';
import 'package:flutter/material.dart';


class QuestionPage extends StatefulWidget {

  @override
  _QuestionPageState createState() => _QuestionPageState();
  final QuestionType questionType;

  QuestionPage(this.questionType);
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

