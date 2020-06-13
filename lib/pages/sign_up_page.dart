import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/login_page_buttons.dart';

import '../constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

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
            mainAxisAlignment: MainAxisAlignment.center,
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
                text: 'SET UP A NEW ACCOUNT',
                onPressed: () {
                  Navigator.pushNamed(context, '/create_account');
                }
              ),
              Column(
                children: <Widget>[
                  Text(
                    '- OR -',
                    style: defaultTextStyle,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Sign up with',
                    style: defaultTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundImageButton(
                    image: AssetImage('assets/google_logo.png'),
                    onPressed: () {
                      //TODO
                    }
                  ),
                  RoundImageButton(
                    image: AssetImage('assets/facebooklogo2.png'),
                    onPressed: () {
                      //TODO
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}