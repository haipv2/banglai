import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'page/home_page.dart';
import 'page/router.dart';
import 'page/widget/app_bar.dart';
import 'provider/home_provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
//  BaseModel baseModel = locator<BaseModel>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFFFFAD32),
      ),
//      initialRoute: 'init',
      onGenerateRoute: Router.generateRoute,
      home: HomePage(),
    );
  }
}
