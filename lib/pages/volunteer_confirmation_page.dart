import 'package:flutter/material.dart';

import '../constants.dart';

class VolunteerConfirmation extends StatefulWidget {
  @override
  _VolunteerConfirmationState createState() => _VolunteerConfirmationState();
}

class _VolunteerConfirmationState extends State<VolunteerConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        RaisedButton(
          child: Text('send verification'),
          onPressed: () {
            auth.currentUser().then((user) {
              user.sendEmailVerification();
            });
            print('sending verification');
          },
        ),
        RaisedButton(
          child: Text('check verification'),
          onPressed: () async {
            // TODO: button must be pressed twice???? WHY????? I DON't UNDERSTAND??????????????????????????????? SEND HELP?????????
            await auth.currentUser().then((user) {
              user.reload();
            });

            Navigator.pushNamed(context, '/welcome');


//            auth.currentUser().then((user) {
//              print(user.isEmailVerified);
//            });
          },
        ),
        Spacer(),
      ],
    );
  }
}
