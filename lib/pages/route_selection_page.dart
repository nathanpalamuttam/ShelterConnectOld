import 'package:flutter/material.dart';

import '../components/action_button.dart';
import '../constants.dart';

class RouteSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sheltergreen,
      //Color(0xFF3ac74a),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 60.0, left: 10.0),
          child: Center(
            child: Text('ShelterConnect',
                style: TextStyle(fontSize: 30))),
        ),
        ),
      body: Padding(
        padding: const EdgeInsets.only(right: 32.0, left: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 4),
            ActionButton(
              text: 'Shelter',
              onPressed: () => Navigator.pushNamed(context, '/shelter'),
            ),
            Spacer(flex: 1),
            ActionButton(
              text: 'Volunteer',
              onPressed: () => Navigator.pushNamed(context, '/volunteer'),
            ),
            Spacer(flex: 4),
          ]
        ),
      ),
    );
  }
}