import 'package:flutter/material.dart';
import 'boat_page.dart';
import 'car_page.dart';
import 'motobike_page.dart';

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
          initialIndex: 0,
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Luật giao thông"),
              centerTitle: true,
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
