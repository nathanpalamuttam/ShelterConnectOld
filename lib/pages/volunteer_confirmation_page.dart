import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/rounded_button.dart';
import '../constants.dart';
import '../models/user.dart';

class VolunteerConfirmation extends StatefulWidget {
  @override
  _VolunteerConfirmationState createState() => _VolunteerConfirmationState();
}

class _VolunteerConfirmationState extends State<VolunteerConfirmation> {
  FirebaseUser user;

  @override
  void initState() {
    auth.currentUser().then((res) {
      user = res;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: blueGradient,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 4,
              ),
              Text(
                'A verification email has been sent to your email address: ' +
                    Provider.of<User>(context, listen: false).email.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 1),
              RoundedButton(
                text: 'Change Email Address',
                onPressed: () {
                  user.delete();
                },
              ),
              RoundedButton(
                text: 'Resend Verification Email',
                onPressed: () {
                  user.sendEmailVerification();
                  print('Email verification sent');
                },
              ),
              RoundedButton(
                text: 'Continue',
                onPressed: () async {
                  await user.reload();
                  user = await auth.currentUser();
                  Navigator.pushNamed(context, '/welcome');
                },
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
