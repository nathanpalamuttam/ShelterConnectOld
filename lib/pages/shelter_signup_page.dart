import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import '../components/no_action_alert.dart';
import '../components/rounded_button.dart';
import '../components/rounded_text_field.dart';
import '../constants.dart';
import 'shelter_home_page.dart';

class ShelterSignupPage extends StatefulWidget {
  @override
  _ShelterSignupPageState createState() => _ShelterSignupPageState();
}

class _ShelterSignupPageState extends State<ShelterSignupPage> {
  String email, password, reEnteredPassword;
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
                      'Shelter Signup',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  RoundedTextField(
                    labelText: 'Organization Email',
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
                          Navigator.pushNamed(context, '/shelter_home');
                        });

                        try {
                          var res = await auth.createUserWithEmailAndPassword(email: email, password: password);
                          db.collection('shelters').document(res.user.uid).setData({
                            'email': email,
                          });
                        } catch (e) {
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
