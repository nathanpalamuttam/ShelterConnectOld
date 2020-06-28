import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/rounded_button.dart';
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
        //Volunteer sign in
        Provider.of<User>(context, listen: false).email = user.email;
        Provider.of<User>(context, listen: false).uid = user.uid;
        DocumentReference volunteerReference = db.collection('volunteers').document(user.uid);
        volunteerReference.get().then((userSnapshot) {
          if (userSnapshot == null) return;

          Provider.of<User>(context, listen: false).name = userSnapshot['name'];
          Provider.of<User>(context, listen: false).type = UserType.VOLUNTEER;

          if (user.isEmailVerified) {
            Navigator.pushNamed(context, '/home'); // TODO: change to volunteer home once log out is available from volunteer_home
          } else {
            Navigator.pushReplacementNamed(context, '/volunteer_confirmation');
          }
        });

        //Shelter sign in
        Provider.of<User>(context, listen: false).email = user.email;
        Provider.of<User>(context, listen: false).uid = user.uid;
        DocumentReference shelterReference = db.collection('shelters').document(user.uid);
        shelterReference.get().then((userSnapshot) {
          if (userSnapshot == null) return;

          Provider.of<User>(context, listen: false).type = UserType.SHELTER;
          //TODO: Make shelter home page
        });
      }
    });
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
              SizedBox(height: 100),
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
            ],
          ),
        ),
      ),
    );
  }
}
