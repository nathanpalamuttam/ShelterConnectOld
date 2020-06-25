import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../models/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: blueGradient,
        ),
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 335, right: 5),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 25,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200, top: 0),
                  child: Text(
                    getGreeting(Provider.of<User>(context, listen: false).name),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String getGreeting(String name) {
  var hour = new DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning, $name';
  }
  if (hour < 17) {
    return 'Good Afternoon, $name';
  }
  return 'Good Evening, $name';
}
