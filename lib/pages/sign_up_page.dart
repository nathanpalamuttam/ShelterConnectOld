import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/login_page_buttons.dart';
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
                text: 'SET UP USER ACCOUNT',
                onPressed: () {
                  Navigator.pushNamed(context, '/create_user_account');
                },
              ),
              RoundedButton(
                text: 'SET UP SHELTER ACCOUNT',
                onPressed: () {
                  Navigator.pushNamed(context, '/shelter');
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
