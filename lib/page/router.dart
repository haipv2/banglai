import 'package:bang_lai/common/app_common.dart';
import 'package:bang_lai/enums/question_type.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'law_page.dart';
import 'question_page.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case PAGE_MOTOBIKE_QUESTION:
        return MaterialPageRoute(builder: (_) => QuestionPage(QuestionType.motobike));
      case PAGE_MOTOBIKE_LAW:
        return MaterialPageRoute(builder: (_) => LawPage(QuestionType.motobike));
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center (
            child: Text('No toure defined for ${settings.name}'),
          ),
        ));
    }
  }
}
