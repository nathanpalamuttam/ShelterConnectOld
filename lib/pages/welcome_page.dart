import 'package:flutter/material.dart';

import '../components/login_page_buttons.dart';
import '../constants.dart';

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
          gradient: blueGradient,
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
              RoundedButton(
                text: 'LOGIN',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              RoundedButton(
                text: 'SIGN UP',
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
            ]
          ),
        ),
      ),
    );
  }
}