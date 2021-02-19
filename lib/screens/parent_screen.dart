import 'package:flutter/material.dart';
import 'package:planets_app/screens/tabs/about_planet.dart';
import 'package:planets_app/screens/tabs/planet.dart';

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Solar System',
            style: TextStyle(color: Colors.deepPurpleAccent),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          bottom: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.deepPurpleAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepPurpleAccent),
              indicatorPadding: EdgeInsets.all(16.0),
              tabs: [
                Tab(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.deepPurpleAccent)),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.deepPurpleAccent)),
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text('Solar System'),
                              )))),
                ),
                Tab(
                  child: Container(
                      decoration: BoxDecoration(
//                  gradient: LinearGradient(colors: [Colors.redAccent, Colors.orangeAccent]),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.deepPurpleAccent)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('The Planets'),
                          ))),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            AboutPlanet(),
            Planet()
          ],
        ),
      ),
    );
  }
}
