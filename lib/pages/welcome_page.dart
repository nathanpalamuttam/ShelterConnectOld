import 'package:flutter/material.dart';

import '../components/login_page_buttons.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3B96FF),
              Color(0xFF2E8FFF),
              Color(0xFF1672DB),
              Color(0xFF025BC2),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Welcome to ShelterConnect',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RoundedButton('LOGIN', '/login'),
              RoundedButton('SIGN UP', '/signup'),
            ]
          ),
        ),
      ),
    );
  }
}