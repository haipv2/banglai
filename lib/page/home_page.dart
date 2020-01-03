import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'boat_page.dart';
import 'car_page.dart';
import 'motobike_page.dart';
import 'widget/app_bar.dart';
import 'widget/loading_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Provider Demo"),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.motorcycle)),
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_boat)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                MotobikePage(),
                CarPage(),
                BoatPage(),
              ],
            ),
          ),
        ));
  }
}
