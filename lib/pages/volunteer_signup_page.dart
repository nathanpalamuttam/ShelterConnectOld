import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../components/login_page_buttons.dart';
import '../components/no_action_alert.dart';
import '../constants.dart';
import '../models/user.dart';

class VolunteerSignupPage extends StatefulWidget {
  @override
  _VolunteerSignupPageState createState() => _VolunteerSignupPageState();
}

class _VolunteerSignupPageState extends State<VolunteerSignupPage> {
  String name, email, password, reEnteredPassword;
  TextEditingController reEnteredPasswordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: loading,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: blueGradient,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Volunteer Signup',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  RoundedTextField(
                    labelText: 'Preferred Name',
                    icon: Icons.person,
                    onChanged: (val) {
                      name = val;
                    },
                  ),
                  SizedBox(height: 20.0),
                  RoundedTextField(
                    labelText: 'Email',
                    icon: Icons.email,
                    onChanged: (val) {
                      email = val;
                    },
                  ),
                  SizedBox(height: 20.0),
                  RoundedTextField(
                    labelText: 'Password',
                    icon: Icons.lock,
                    onChanged: (val) {
                      password = val;
                    },
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  RoundedTextField(
                    controller: reEnteredPasswordController,
                    labelText: 'Re-enter Password',
                    icon: Icons.lock,
                    onChanged: (val) {
                      reEnteredPassword = val;
                    },
                    obscureText: true,
                  ),
                  RoundedButton(
                    text: 'CREATE ACCOUNT',
                    onPressed: () async {
                      if (password != reEnteredPassword) {
                        showDialog(
                          context: context,
                          builder: (_) => NoActionAlert(
                            title: 'The passwords you entered did not match, please try again.',
                          ),
                        );
                        reEnteredPasswordController.clear();
                      } else {
                        setState(() {
                          loading = true;
                        });

                        try {
                          var res = await auth.createUserWithEmailAndPassword(email: email, password: password);
                          db.collection('volunteers').document(res.user.uid).setData({
                            'name': name,
                            'email': email,
                          });
                          Provider.of<User>(context, listen: false).email = email;
                          Provider.of<User>(context, listen: false).uid = res.user.uid;
                          Provider.of<User>(context, listen: false).name = name;
                          Provider.of<User>(context, listen: false).type = UserType.VOLUNTEER;

                          auth.currentUser().then((user) {
                            try {
                              user.sendEmailVerification();
                              print('verification sent');
                            } catch(e) { // TODO: catch block
                              print('Exception caught: $e');
                            }
                          });

                          Navigator.pushNamed(context, '/volunteer_confirmation');

                        } catch (e) {
                          print(e);
                          showDialog(
                            context: context,
                            builder: (_) => NoActionAlert(title: 'Invalid email'),
                          );
                        }

                        setState(() {
                          loading = false;
                        });
                      } // else
                    }, // onPressed
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
