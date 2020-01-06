import 'package:bang_lai/common/app_common.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String label;
  final Widget child;

  ItemCard({this.label, this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: child,
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: new Text(
                label,
                style: textStyleLarge,
              ),
            )
          ],
        ));
  }
}
