import 'package:bang_lai/common/app_common.dart';
import 'package:flutter/material.dart';

import 'widget/item_card.dart';

class MotobikePage extends StatefulWidget {
  @override
  _MotobikePageState createState() => _MotobikePageState();
}

class _MotobikePageState extends State<MotobikePage> {
  List carTabItems = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
          primary: true,
          crossAxisCount: 2,
          childAspectRatio: 0.80,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(PAGE_MOTOBIKE_QUESTION);
              },
              child: ItemCard(
                  label: 'Câu hỏi',
                  child: Image(
                    image: new AssetImage("assets/images/question.png"),
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(PAGE_MOTOBIKE_LAW);
              },
              child: ItemCard(
                  label: 'Phí phạt',
                  child: Image(
                    image: new AssetImage("assets/images/law.png"),
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                  )),
            ),
          ]),
    );
  }
}
