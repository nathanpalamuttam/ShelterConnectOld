import 'package:flutter/material.dart';

import 'package:flutter_app/components/login_page_buttons.dart';

import '../constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                SizedBox(height: 30.0),
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
                  obscureText: true,
                  onChanged: (val) {
                    password = val;
                  }
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => print('Forgot Password Button Pressed'),
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text(
                      'Forgot Password?',
                      style: defaultTextStyle.copyWith(fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: rememberMe,
                      checkColor: Colors.blue,
                      activeColor: Colors.white,
                      onChanged: (val) {
                        setState(() {
                          rememberMe = val;
                        });
                      },
                    ),
                    Text(
                      'Remember Me',
                      style: defaultTextStyle,
                    ),
                  ]
                ),
                RoundedButton(
                  text: 'LOGIN',
                  onPressed: () {
                    var res = auth.signInWithEmailAndPassword(email: email, password: password);
                    print('Login successful!');
                  },
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}