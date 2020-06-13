import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/components/login_page_buttons.dart';

class LoginorSignin extends StatefulWidget {
  @override
  _LoginorSigninState createState() => _LoginorSigninState();
}

class _LoginorSigninState extends State<LoginorSignin> {
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
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF3B96FF),
                            Color(0xFF2E8FFF),
                            Color(0xFF1672DB),
                            Color(0xFF025BC2),
                            // Color(0xFF73AEF5),
                            // Color(0xFF61A4F1),
                            // Color(0xFF478DE0),
                            // Color(0xFF398AE5),
                          ],
                          stops: [0.1, 0.4, 0.7, 0.9],
                        ),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 40.0,
                        ),
                        child: Column(
                            children: <Widget>[
                              SizedBox(height: 340),
                              Text('Welcome to ShelterConnect', style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                              LoginButton('LOGIN', '/login'),
                              LoginButton('SIGN UP', '/signup'),
                            ]),
                      ),
                    ),
                  ]))),
    );
  }
}