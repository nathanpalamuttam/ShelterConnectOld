import 'package:flutter/material.dart';

class VolunteerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Volunteer Route"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              (Navigator.pop(context));
            },
            icon: Icon(Icons.arrow_left),
          )
        ],
      ),
      
    );
  }
}