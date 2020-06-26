import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShelterHomePage extends StatefulWidget {
  @override
  _ShelterHomePageState createState() => _ShelterHomePageState();
}

class _ShelterHomePageState extends State<ShelterHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(30, (index) {
          return new Card(
            margin: EdgeInsets.all(16.0),
            elevation: 5.0,
            child: new Container(
              child: new Text("$index"),
            )
          );
    }
      )

    ));
  }
}
