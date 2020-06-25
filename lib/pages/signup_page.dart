import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/rounded_button.dart';
import '../constants.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: blueGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create a ShelterConnect Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              RoundedButton(
                text: 'SIGN UP AS A VOLUNTEER',
                onPressed: () {
                  Navigator.pushNamed(context, '/volunteer_signup');
                },
              ),
              RoundedButton(
                text: 'SIGN UP AS A SHELTER',
                onPressed: () {
                  Navigator.pushNamed(context, '/shelter_signup');
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
