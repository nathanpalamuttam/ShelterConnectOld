import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/pages/signin_or_login_page.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // final String buttonaction;

  // SplashScreen(this.buttonaction);

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginorSignin()));
      },
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B96FF),
      body: Center(
        child: FlutterLogo(
          size: 300,
        ),
      ),
    );
  }
}