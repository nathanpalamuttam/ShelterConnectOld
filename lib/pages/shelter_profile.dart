import 'package:flutter/material.dart';

import '../constants.dart';

class ShelterProfile extends StatefulWidget {
  @override
  _ShelterProfileState createState() => _ShelterProfileState();
}

class _ShelterProfileState extends State<ShelterProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: blueGradient
            ),
          ),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 200.0,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
