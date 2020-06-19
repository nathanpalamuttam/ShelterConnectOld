import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/login_page_buttons.dart';
import '../constants.dart';
import '../models/user.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {
    auth.onAuthStateChanged.listen((user) {
      if (user == null) {
        Navigator.popUntil(context, (route) => route.isFirst);
      } else {
        Provider.of<User>(context, listen: false).email = user.email;
        Provider.of<User>(context, listen: false).uid = user.uid;

        DocumentReference userReference = db.collection('users').document(user.uid);
        userReference.get().then((user) {
          Provider.of<User>(context, listen: false).name = user['name'];
          Navigator.pushNamed(context, '/home');
        });
      }
    });
    super.initState();
  }

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