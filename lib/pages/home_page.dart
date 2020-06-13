import 'package:flutter/material.dart';
import 'package:flutter_app/components/settings_button.dart';
//import 'package:sign_in_flutter/constants/constants.dart';
//import 'package:sign_in_flutter/sign_in.dart';

import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SettingButton('/settings'),
                      Padding(
                        padding: const EdgeInsets.only(right: 200, top: 0),
                        child: Text(getGreeting(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      
                    ]),
                ),
              ),
      ]))),
    );
  }
}

String getGreeting() {
  var hour = new DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning';
  }
  if (hour < 17) {
    return 'Good Afternoon';
  }
  return 'Good Evening';
}