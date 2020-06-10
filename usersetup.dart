import 'package:flutter/material.dart';
import './constants/constants.dart';


class TwoButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3ac74a),
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
              BlueButton('Shelter', '/fifth'),
              Spacer(flex: 1),
              BlueButton('Volunteer', '/fourth'),
              Spacer(flex: 4),
              
              
            ]),
        ),
        );
  }
}