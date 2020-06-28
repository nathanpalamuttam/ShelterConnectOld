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
                  auth.currentUser().then((user) {
                    user.delete();
                  });
                },
              ),
              RoundedButton(
                text: 'Resend Verification Email',
                onPressed: () {
                  auth.currentUser().then((user) {
                      user.sendEmailVerification();
                      print('verification sent');
                  });
                },
              ),
              RoundedButton(
                text: 'Continue',
                onPressed: () async {
                  // TODO: fix issue with requiring second button press
                  await auth.currentUser().then((user) {
                    user.reload();
                  });
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
