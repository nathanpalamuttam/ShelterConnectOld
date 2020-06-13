import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light, 
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: blueGradient,
                ),
            ),
            Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 350.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Create a ShelterConnect Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ),

                      SizedBox(height: 10.0),
                      RoundedButton('SET UP A NEW ACCOUNT', '/create_account'),
                      SignInWith(),
                      LoginRow(),
                      SizedBox(height: 0),

                    ]),
                ),
              ),
      ]))),
    );
  }

}