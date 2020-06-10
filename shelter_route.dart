import 'package:flutter/material.dart';

class ShelterRoute extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shelter Route"),
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